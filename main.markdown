---
layout: default
permalink: /
---

<div id="about" class= "text-container">
    <h1>Hi, I'm Laura, so nice to meet you!</h1>
    <div class ="text-content">
        <p>I'm Laura — a researcher and developer working at the intersection of computer vision, extended reality, and immersive media. I explore how technology can deepen and enhance the human experience through my work at Fraunhofer HHI and my master’s studies in Applied Computer Science.</p>
    </div>
    {% include about-list.html%}
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
<div class="contact-container">
{% include contact.html %}
<img src="uploads/portrait.png" 
    alt="portrait" 
    title="portrait" 
    class= "portrait"/>
</div>
<p class="comment">// if you are a digital artist seeking technical advice, please briefly describe your project, your concerns, and provide a time preference</p>
