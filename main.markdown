---
layout: default
permalink: /
---



<div id="main-title">
    <h1>Laura Amaro</h1>
    <h2>XR and Computer Vision Innovation</h2>
</div>

{% if site.data.projects %}
<div id="gallery-scroll-wrapper">
<div class="gallery-wall">
    {% assign p_list = site.data.projects %}
    {% for project in p_list %}
        {% assign key = project | first %}
        {% assign margin = "-20,-10, 0, 10, 20" | split: "," %}
        {% assign random_margin = margin | sample %}
        <div class="gallery-tile {{ p_list[key].size }} {{ p_list[key].state }}" 
            style="margin: {{ random_margin }}px {{ random_margin }}px">
            <a href="{{ p_list[key].url }}">
                <div class="gallery-image-wrapper">
                    <img src="{{ p_list[key].image }}" alt="{{ p_list[key].title }}">
                </div>
                    <h2>{{ p_list[key].title }}</h2>
            </a>
        </div>
    {% endfor %}
</div>
</div>
{% endif %}
