---
layout: project
permalink: /projects/hpe-lidar/
title: Master Thesis
intro: Low-Latency Multi-User Pose Tracking in Audience-Driven 180° Projection under Dynamic Lighting
header-image: /uploads/headers/hpe.png
year: 2026
location: Berlin, Germany
platform: Linux

tech:
  - RSView, Wireshark
  - Python, C++
  - DAPT
  - PRN

team:
  developers:
    - name: Laura Amaro
      url: https://lauraamaro.eu
      role: Concept, Research, Development

gallery-media-path: /uploads/hpe-lidar


---
Reliable multi-user human pose estimation remains a key challenge across several do-
mains, particularly in immersive environments where dynamic projection lightning can

severely affect camera-based tracking systems. In recent years, LiDAR-based human pose
estimation has emerged as a promising sensing approach for tracking human movement
while preserving user privacy. However, most existing approaches target outdoor sensing
scenarios, leaving their applicability to indoor environments largely unexplored.
This thesis investigates which single-LiDAR-based human pose estimation method is
better suited for deployment in audience-driven immersive environments, specifically in
the TiME Lab at Fraunhofer Heinrich Hertz Institute (HHI). To address this objective,
two pretrained AI-based pipelines, PRN and DAPT, were systematically compared using
a dedicated evaluation dataset that was recorded in a motion capture studio with two
participants, providing synchronized LiDAR point clouds and ground-truth skeletal data.
The evaluation focused on accuracy, robustness and real-time performance. The pose
estimation accuracy was assessed with a Wilcoxon signed-rank test across scenes. For the
robustness study, all frames were classified according to occlusion levels and evaluated
using a repeated measures ANOVA. Finally, real-time performance and scalability were
examined by comparing the latency and throughput under an increasing number of parallel
inference instances.
The results show that DAPT achieved higher pose accuracy, while PRN provides

lower latency and higher throughput, revealing a trade-off between accuracy and com-
putational performance. Considering the requirements of interactive immersive environ-
ments, where reliable pose estimates are critical, DAPT was selected as the preferred

pipeline for deployment in the TiME Lab. These findings provide practical guidance for
selecting LiDAR-based pose estimation pipelines for indoor settings and highlight their
potential applicability to other domains such as industry, education, and location-based
entertainment.