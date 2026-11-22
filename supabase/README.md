---
published: false
---
# leon46 setup (Supabase)

The page lives at `/leon46` (`pages/leon46.markdown` + `_layouts/leon46.html`).
`published: false` above keeps this guide from being rendered as a page on the site.

## 1. Create the project
1. Go to https://supabase.com/dashboard and click **New project**.
2. Pick a name (e.g. `leon46`), a database password and the region closest to you (e.g. Frankfurt / `eu-central-1`).

## 2. Run the migration
1. Open **SQL Editor** and click **New query**.
2. Paste the contents of `supabase/migrations/20261122120000_leon46.sql` and click **Run**.
3. Check under **Table Editor** that `grocery_items` and `allowed_users` exist, both marked "RLS enabled".
4. Under **Database → Publications → supabase_realtime**, `grocery_items` should be switched on. The migration does this for you.

## 3. Enable email (magic link) auth
1. **Authentication → Sign In / Providers → Email** should be enabled (it is by default).
2. Optional but recommended for phones: **Authentication → Emails → Magic Link** template, add the code
   below the link so you can type it in the app if the link opens in the wrong browser:
   ```html
   <p>O introduce este código: <strong>{{ .Token }}</strong></p>
   ```
3. Optional: the built-in email sender is limited to a few emails per hour. That is enough for two people. Set up custom SMTP if you hit the limit.

## 4. Site URL and redirect URLs
**Authentication → URL Configuration**
- **Site URL:** `https://lauraamaro.eu/leon46`
- **Redirect URLs** (add both):
  - `https://lauraamaro.eu/leon46`
  - `http://localhost:4000/leon46` (local development)

## 5. Allow your two emails
In the SQL editor (use lowercase):
```sql
insert into public.allowed_users (email) values
  ('first@example.com'),
  ('second@example.com');
```
Anyone else can still receive a magic link and sign in, but they see "Sin acceso" and the database returns nothing to them.

## 6. Keys / env vars
**Project Settings → API** (or **API Keys**): copy the **Project URL** and the **anon** (or **publishable**) key.
Never use the `service_role` / secret key in the browser.

### Local development
```sh
cp .env.example .env.local          # then fill in both values
ruby scripts/leon46-env.rb          # writes assets/js/leon46-config.js (git-ignored)
bundle install                      # first time only
bundle exec jekyll serve            # open http://localhost:4000/leon46
```

### On the live site (GitHub Pages)
GitHub Pages builds this site without any env vars, and the generated config file is not committed.
The first time you open `https://lauraamaro.eu/leon46` on each phone, the page asks for the
Project URL and the anon key. Paste them once and they are saved in that browser.

The anon key is designed to be public: every request still goes through Row Level Security, and only the emails in
`allowed_users` can read or write. If you would rather skip the one-time prompt, you can commit
`assets/js/leon46-config.js` (remove it from `.gitignore`). That is safe with RLS, but it is your call.
