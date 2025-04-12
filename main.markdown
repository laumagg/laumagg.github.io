---
layout: default
permalink: /
---

# Laura Amaro
## XR and Computer Vision Innovation

{% if site.data.projects %}
<div class="horizontal-scroll">
    {% assign p_list = site.data.projects %}
    {% for project in p_list %}
        {% assign key = project | first %}
        <div class="project-tile {{ p_list[key].size }}">
            <a href="{{ p_list[key].url }}">
                <img src="{{ p_list[key].image }}" alt="{{ p_list[key].title }}">
                <h3>{{ p_list[key].title }}</h3>
            </a>
        </div>
  {% endfor %}
</div>
{% endif %}