---
layout: default
permalink: /
---

<div id="about" class= "text-container">
    <div class ="text-content">
    <h2>Hi, I'm Laura Amaro, so nice to meet you!</h2>
    <p>Currently, I am pursuing a <b>Master's degree in Applied Computer Science</b> with a specialization in Visual Computing at the University of Applied Sciences Berlin and work as a graduate research assistant at <b>Fraunhofer Institut HHI</b>. Previously, I completed a Bachelor's program in Environmental Computer Science, where I focused on web development and GIS.</p>
    <p>I have cultivated a diverse skill set related to <b>eXtended Reality (XR)</b>, including 3D computing using the Unity and Unreal game engines, programming, and human-centered interaction. The convergence of technology, nature, and human experience fascinates me, and I strive to use technology to drive innovation and make a positive impact. I also love partnering with the <b>creative community</b> to capture the wonder of hybrid encounters.</p>
    {% include about-list.html%}
    </div>
</div>


{% if site.data.projects %}
<h2 id="projects">Featured Work and Playground</h2>
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

<h2 id="contact">Let us connect</h2>
{% include contact.html %}
