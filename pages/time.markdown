---
layout: default
permalink: /projects/time-lab-interactive/
---
{% capture content %}

# Interactive TiME Lab

### since 02.2025

Human position and pose tracking framework for the <a href ="https://www.hhi.fraunhofer.de/en/fraunhofer-hhi/cooperation-platforms/time-lab-tomorrows-immersive-media-experience-laboratory.html" target="_blank">TiME Lab \| TiME Lab (Linux) 

**Technologies:** Python, DepthAI, ROS, Unity and Unreal Game Engines

As part of my work at <a href="https://www.hhi.fraunhofer.de/en/" target="_blank">Fraunhofer Heinrich Hertz Institute</a>, this project explores the transformation of digital content into co-located, multiplayer, interactive experiences through positional tracking and pose tracking.

Using RGB-D camera slider sensors, spatial movement data is captured and streamed over the network to Unity or Unreal Engine, enabling real-time interaction with time-lapse sequences. This pipeline allows the creation of immersive applications where users can navigate, explore, and interact with temporal visual data in a spatially coherent way.

{% include image-gallery.html folder="/uploads/timelab/" %}
{% endcapture %}

<div id="project-wrapper">
  {{ content | markdownify }}
</div>