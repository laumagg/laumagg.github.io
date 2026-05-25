---
layout: default
permalink: /
---

<div id="about-wrapper">
    <h1>XR Developer & Researcher</h1>
    <div id="about" class= "hero-container animate-on-view fade-in-slow">
        <img src="/uploads/cuts/selfie.jpg" alt="selfie" id="hero-selfie">    
        <div class ="text-content">
            <p>Hey, nice to meet you! I'm Laura, an software engineer working at the intersection of extended reality, computer vision, and immersive spaces. My works spans from emergency medical training to infrastructure simulations that change how people perceive the world around them.
            <br/>
            At Fraunhofer HHI, I lead and develop XR applications in Unity and Unreal Engine: real-time avatar animation, 360° video pipelines, and multi-user VR systems. At the institute's immersive TiME Lab, I engineered LiDAR and camera-based pipelines for real-time people tracking. 
            <br/>
            I recently completed my MSc in Applied Computer Science and am now exploring where immersive technology truly matters. Check out my projects down below!
            </p>
            {% include about-list.html%}
        </div>
    </div>
    {% include partner-logos.html %}
</div>

<div id="work" class="section-wrapper">
<div class="section-inner-wrapper animate-on-view fade-in-slow">
{% if site.data.work-projects %}
<h2>Featured Work</h2>
<div id="work-gallery" class="gallery-wall">
    {% assign p_list = site.data.work-projects %}
    {% for project in p_list %}
        {% assign key = project | first %}
        <div class="gallery-tile {{ p_list[key].orientation }}">
            {% assign link = p_list[key].url %}
            {% if link contains '://' %}
            <a href="{{ link }}" target="_blank" rel="noopener noreferrer">
             {% else %}
            <a href="{{ link }}">
            {% endif %}
                <div class="gallery-image-wrapper">
                    <img src="{{ p_list[key].image }}" alt="{{ p_list[key].title }}">
                </div>
                <h2><span class="title-highlight">{{ p_list[key].title }}</span></h2>
            </a>
        </div>
    {% endfor %}
</div>
{% endif %}
</div>
</div>

<div class="work-fun-wave-container"></div>

<div id="fun" class="section-wrapper">
<div class="section-inner-wrapper animate-on-view fade-in-slow">
{% if site.data.fun-projects %}
<h2>Fun</h2>
<div id="fun-gallery" class="gallery-wall">
    {% assign p_list = site.data.fun-projects %}
    {% for project in p_list %}
        {% assign key = project | first %}
        <div class="gallery-tile {{ p_list[key].orientation }}">
            {% assign link = p_list[key].url %}
            {% if link contains '://' %}
            <a href="{{ link }}" target="_blank" rel="noopener noreferrer">
             {% else %}
            <a href="{{ link }}">
            {% endif %}
                <div class="gallery-image-wrapper">
                    <img src="{{ p_list[key].image }}" alt="{{ p_list[key].title }}">
                </div>
                <h2><span class="title-highlight">{{ p_list[key].title }}</span></h2>
            </a>
        </div>
    {% endfor %}
</div>
{% endif %}
</div>
</div>

<div class="fun-contact-wave-container"></div>
<div id="contact-wrapper">
    <h2 id="contact" class="animate-on-view fade-in-slow">Let us connect</h2>
    <div class="contact-container animate-on-view fade-in-slow">
    {% include contact.html %}
    <img src="uploads/portrait.png" 
        alt="portrait" 
        title="portrait" 
        class= "portrait"/>
    </div>
</div>