---
layout: default
permalink: /projects/arluft/
---
{% include project-back.html %}

# AR-Luft

## Bachelor's thesis prototype 

### 2022.04. – 2022.09.

**Development of an interactive AR display of the Berlin Air Quality Monitoring Network data** 

Data visualization with AR in an educational context \| Android 

**Technologies:** Unity, C#, AR Foundation, MapBox, Blender, Rest-API, JSON

In the context of this work, a prototypical application was created that visualizes the Berlin air quality data retrieved from the Berlin Air Quality
Monitoring Network (Berliner Luftgüte-Messnetzes, BLUME) using augmented reality. The goal was to introduce the younger generation to BLUME as an organization and its tasks. The prototype developed, AR-Luft, is aimed at young people between 10 and 15 years of age and is to be used as support for class trips or theme days.

AR-Luft contains three views: a 2D map view and two visualizations in AR. In the map view, the locations of the BLUME measuring stations are displayed. A list of pollutants measured there is displayed by selecting a station from which one can pick a station. There begins the first AR experience, which aims to collect pollutant particles. Finally, the temporal development of the pollutant measurements of all measuring stations is displayed in a 3D graph. Both views were created using the Rest API of BLUME was used to create them. The Unity project is published as open-source code on <a href= "https://github.com/laumagg/AR-Luft" target= "_blank">GitHub</a>, where it can be downloaded. An APK can be provided under request. 

{% include image-gallery.html folder="/uploads/arluft" %}

