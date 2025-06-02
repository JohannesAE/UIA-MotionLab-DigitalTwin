![MotionLab](Images/motion-lab.png)
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

## Speedgoat Connection Guide

This guide provides a quick overview of the necessary steps to set up communication between your development PC and the Speedgoat real-time target unit. It covers the required software, installation instructions, and network configuration.

## Required Software

1. **Speedgoat I/O Blockset**  
   - To access this, either contact Daniel Hagen (Leader of the Motion Laboratory) or create a Speedgoat Customer Portal account.

2. **[Simulink Real-Time Target Support Package (SLRT)](https://www.mathworks.com/matlabcentral/fileexchange/76387-simulink-real-time-target-support-package)**  
   - Install via the MATLAB Add-Ons Explorer.

3. **Supported C Compiler**  
   - [Visual Studio 2015, 2017, 2019, or 2022](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170#visual-studio-2015-2017-2019-and-2022)  
   If you do not already have a compiler installed, use the link above to install the correct version.

Install the SLRT support package using the MATLAB Add-Ons Explorer.  
Download the Speedgoat I/O Blockset and install it by extracting the ZIP file, navigating to the root folder, and running the Speedgoat setup script "speed-goat_setup"

For visual instructions, refer to the [official Speedgoat installation video](https://www.speedgoat.com/knowledge-center/simulink-real-time-basics/part-1-installing-required-software).

## Development PC Ethernet Configuration

To connect to the Speedgoat, you will need to configure your development PC’s Ethernet adapter:

- Set a **static IPv4 address** of `192.168.1.11` for the adapter connected to the Speedgoat.
- Connect your development PC directly to the Speedgoat's **Host Link** port using an Ethernet cable.

> **Note:**  
> There is a pre-labeled Ethernet cable (`SG-Hostlink`) available on the table in the MotionLab that is connected to the Host Link port.stlink.

[![Comau Visualization](Images/Comau_Visualization.gif)](https://www.youtube.com/watch?v=klBl6_7pW4A)

