---
layout: default
permalink: /
---

<div id="about-wrapper">
    <div id="about" class= "text-container">
        <h1>Hi, there, so nice to meet you!</h1>
        <div class ="text-content">
            <p>I'm Laura — a researcher and developer working at the intersection of computer vision, extended reality, and immersive media. I explore how technology can deepen and enhance the human experience through my work at Fraunhofer HHI and my master’s studies in Applied Computer Science at the HTW Berlin.</p>
        </div>
    </div>
    {% include about-list.html%}
</div>

<div id="projects-wrapper">
{% if site.data.projects %}
<h2 id="projects">Featured Work and Playground</h2>
<div class="gallery-wall">
    {% assign p_list = site.data.projects %}
    {% for project in p_list %}
        {% assign key = project | first %}
        {% assign margin = "-20,-10, 0, 10, 20" | split: "," %}
        {% assign random_margin = margin | sample %}
        <div class="gallery-tile">
            <a href="{{ p_list[key].url }}">
                <div class="gallery-image-wrapper">
                    <img src="{{ p_list[key].image }}" alt="{{ p_list[key].title }}">
                </div>
                    <h2>{{ p_list[key].title }}</h2>
            </a>
        </div>
    {% endfor %}
</div>
{% endif %}
</div>

<div id="contact-wrapper">
    <h2 id="contact">Let us connect</h2>
    <div class="contact-container">
    {% include contact.html %}
    <img src="uploads/portrait.png" 
        alt="portrait" 
        title="portrait" 
        class= "portrait"/>
    </div>
</div>