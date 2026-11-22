-- leon46: shared household grocery list
-- Run once in the Supabase SQL editor (or with `supabase db push`).

-- ---------------------------------------------------------------------------
-- Allowed users (managed manually from the dashboard / SQL editor)
-- ---------------------------------------------------------------------------
create table if not exists public.allowed_users (
  email text primary key
);

alter table public.allowed_users enable row level security;
-- No policies on purpose: clients (anon / authenticated) cannot read or write it.
revoke all on table public.allowed_users from anon, authenticated;

-- Returns true when the caller's JWT email is in allowed_users.
-- SECURITY DEFINER so it can read allowed_users even though clients cannot.
create or replace function public.leon46_is_allowed()
returns boolean
language sql
stable
security definer
set search_path = ''
as $$
  select exists (
    select 1
    from public.allowed_users au
    where lower(au.email) = lower(auth.jwt() ->> 'email')
  );
$$;

revoke all on function public.leon46_is_allowed() from public, anon;
grant execute on function public.leon46_is_allowed() to authenticated;

-- ---------------------------------------------------------------------------
-- Grocery items
-- ---------------------------------------------------------------------------
create table if not exists public.grocery_items (
  id          uuid primary key default gen_random_uuid(),
  name        text not null check (length(btrim(name)) between 1 and 100),
  category    text not null,
  is_checked  boolean not null default false,
  in_cart     boolean not null default false,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now(),
  constraint grocery_items_category_check check (category in (
    'Proteína', 'Lácteos', 'Embutidos', 'Frutas', 'Verduras', 'Legumbres',
    'Carbohidratos', 'Panadería', 'Congelados', 'Bebidas', 'Salsas',
    'Especias', 'Snacks', 'Otros'
  ))
);

-- No duplicate names (case-insensitive) within a category.
create unique index if not exists grocery_items_category_name_key
  on public.grocery_items (category, lower(name));

-- Keep updated_at current.
create or replace function public.leon46_set_updated_at()
returns trigger
language plpgsql
set search_path = ''
as $$
begin
  new.updated_at := now();
  return new;
end;
$$;

drop trigger if exists grocery_items_set_updated_at on public.grocery_items;
create trigger grocery_items_set_updated_at
  before update on public.grocery_items
  for each row execute function public.leon46_set_updated_at();

-- ---------------------------------------------------------------------------
-- Row Level Security: only allowed users, shared list (no per-user rows)
-- ---------------------------------------------------------------------------
alter table public.grocery_items enable row level security;

revoke all on table public.grocery_items from anon;
grant select, insert, update, delete on table public.grocery_items to authenticated;

drop policy if exists "grocery_items_select_allowed" on public.grocery_items;
create policy "grocery_items_select_allowed" on public.grocery_items
  for select to authenticated
  using ((select public.leon46_is_allowed()));

drop policy if exists "grocery_items_insert_allowed" on public.grocery_items;
create policy "grocery_items_insert_allowed" on public.grocery_items
  for insert to authenticated
  with check ((select public.leon46_is_allowed()));

drop policy if exists "grocery_items_update_allowed" on public.grocery_items;
create policy "grocery_items_update_allowed" on public.grocery_items
  for update to authenticated
  using ((select public.leon46_is_allowed()))
  with check ((select public.leon46_is_allowed()));

drop policy if exists "grocery_items_delete_allowed" on public.grocery_items;
create policy "grocery_items_delete_allowed" on public.grocery_items
  for delete to authenticated
  using ((select public.leon46_is_allowed()));

-- ---------------------------------------------------------------------------
-- Realtime
-- ---------------------------------------------------------------------------
do $$
begin
  if not exists (
    select 1 from pg_publication_tables
    where pubname = 'supabase_realtime'
      and schemaname = 'public'
      and tablename = 'grocery_items'
  ) then
    alter publication supabase_realtime add table public.grocery_items;
  end if;
end;
$$;
