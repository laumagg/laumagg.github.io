---
layout: project
permalink: /projects/arluft/
title: AR-Luft
subtitle: Bachelor's Thesis Prototype
intro: Development of an interactive augmented reality visualization of Berlin’s air quality monitoring data for educational use.
header-image: /uploads/headers/arluft.jpg
year: 2022
event: Bachelor's Thesis
location: Berlin, Germany
platform: Android

tech:
  - Unity
  - C#
  - AR Foundation
  - Mapbox
  - Blender
  - REST API
  - JSON

team:
  developers:
    - name: Laura Amaro
      url: https://lauraamaro.eu
      role: Concept, development, and design

gallery-media-path: /uploads/arluft
---

AR-Luft is a prototypical augmented reality application developed as part of a bachelor’s thesis. It visualizes air quality data from the Berlin Air Quality Monitoring Network (Berliner Luftgüte-Messnetz, BLUME) in an interactive and educational way.

The primary goal of the project was to introduce younger audiences to BLUME as an organization and to raise awareness of air quality and environmental monitoring. The application is aimed at children and teenagers between the ages of 10 and 15 and is designed to support school excursions, project days, or environmental education programs.

The application features three main views: a 2D map view showing the locations of BLUME measuring stations, and two augmented reality visualizations. In the map view, users can select individual stations to explore the pollutants measured at each location. This interaction leads into the first AR experience, in which users collect visualized pollutant particles. The second AR view presents the temporal development of pollutant measurements across all stations in a three-dimensional graph.

All visualizations are generated using live data retrieved via the BLUME REST API. The Unity project is published as open-source and available on GitHub: https://github.com/laumagg/AR-Luft  

An APK can be provided upon request.
