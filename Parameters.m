clc; clear all; close all;

%timestep
Ts = 0.001;

%load multibody parameter files
run('eMotion_8000_parameters');
run('eMotion_1500_parameters');
run('Robot_parameters');