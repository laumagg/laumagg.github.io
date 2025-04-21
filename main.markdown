---
layout: default
permalink: /
---

<div id="about" class= "text-container">
    <div class ="text-content">
    <h1>Hi, I'm Laura, so nice to meet you!</h1>
    <p>Bridging academic research and creative exploration, my work in Visual Computing is shaped by ongoing <b>Master’s studies</b> in Applied Computer Science and hands-on research at the <b>Fraunhofer Institute for Telecommunications, HHI</b>, where I contribute to multiple projects in immersive media technologies. My academic journey is focused on <b>computer vision</b>, <b>image processing</b>, and <b>immersive technologies</b>.</p> 
    <p>Over the years, I’ve developed a broad skill set in <b>eXtended Reality (XR)</b>, including 3D computing with Unity and Unreal Engine, programming, and human-centered design. Deeply inspired by the intersection of technology, nature, and human experience, I’m driven to create meaningful, innovative applications. I also enjoy collaborating with the <b>creative community</b> to explore the potential of hybrid, immersive experiences that spark curiosity and connection.</p>
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
<div class="contact-container">
{% include contact.html %}
<img src="uploads/portrait.png" 
    alt="portrait" 
    title="portrait" 
    class= "portrait"/>
</div>
<p class="comment">// if you are a digital artist seeking technical advice, please briefly describe your project, your concerns, and provide a time preference</p>
