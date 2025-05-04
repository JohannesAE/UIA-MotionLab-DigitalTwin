# UIA-The Norwegian MotionLab - DigitalTwin
## Introduction

This repository is associated with the paper *"Rapid Model-Based Design and Real-Time Digital Twin Integration: An Offshore Robot Case Study"* (link to be added upon publication), conducted at the Norwegian Motion Laboratory at the University of Agder (UiA).  

It is intended to serve as a quick-start guide for researchers and students at UiA to interface with the laboratory's hardware. Specifically, it describes how to use a Speedgoat real-time target machine to communicate with a Beckhoff PLC over UDP, enabling rapid prototyping of control algorithms and receiving real-time feedback measurements.

The repository includes three Simulink Multibody models developed in MATLAB 2024b:

1. **Comau Robot Feedback Model** (`Comau_robot_MotionLab_Feedback.slx`)  
   This model visualizes the motion of the Comau robot based on control inputs sent to the real robot. It is configured to receive UDP feedback from the actual Comau system.

2. **Digital Twin Model (Comau + EM8000 + EM1500 Platforms)** (`MotionLab_DigitalTwin.slx`)  
   This model includes the EM8000 and EM1500 Stewart platforms along with the Comau robot mounted on the EM8000 platform. It visualizes the real hardware setup.  
   **Note**: This model is still under development. Some directions and the neutral position of the platforms are as of writing this inaccurate.

3. **Comau Robot Control Verification Model** (`Comau_robot_SG_Feedback.slx`)  
   This model receives joint velocity commands from the Speedgoat and is used to visually verify control algorithms before deployment to the real robot.

(Add a example speedgoat model either direct model or out of model build file showing how to upload a .mldatx file to the speedgoat)

---

These models were originally developed during the [Mechatronics MSc thesis by Thomas Eikeland](https://github.com/UiAMotionLab/Simulink-Simulator/tree/main), and have since been further expanded for hardware interfacing purposes by Johannes A. Eidsvik.

## Connection Guide
# Required software 


[![Comau Visualization](Images/Comau_Visualization.gif)](https://www.youtube.com/watch?v=klBl6_7pW4A)

