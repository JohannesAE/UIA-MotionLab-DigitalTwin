clc; clear all; close all;

%timestep
Ts = 0.001;

%% eMotion-8000 Stewart Platform
VarBig.BF2ShaftJointDist = 58-8; %mm
VarBig.test = 1; 
VarBig.Shaft2BaseRot = -90; %deg
VarBig.TransCyl = 815; %mm
VarBig.CylStart = 0; %m
VarBig.Switch = 0;
VarBig.SineAmp1 = 0.6;
VarBig.SineAmp2 = 0.5;
VarBig.SineAmp4 = 0.7;
VarBig.SineAmp5 = 0.8;
VarBig.SineAmp7 = 0.8;
VarBig.SineAmp8 = 0.4;
VarBig.Freq1 = 1;
VarBig.Freq2 = 1;
VarBig.Freq4 = 1;
VarBig.Freq5 = 1;
VarBig.Freq7 = 1;
VarBig.Freq8 = 1;
%% eMotion-1500 Stewart Platform
Var.BF2ShaftJointDist = 58-8; %mm
Var.test = 1; 
Var.Shaft2BaseRot = -90; %deg
Var.TransCyl = 815; %mm
Var.CylStart = 0.0; %m
Var.Switch = 0;
Var.SineAmp1 = 0.6;
Var.SineAmp2 = 0.5;
Var.SineAmp4 = 0.7;
Var.SineAmp5 = 0.8;
Var.SineAmp7 = 0.8;
Var.SineAmp8 = 0.4;
Var.Freq1 = 1;
Var.Freq2 = 1;
Var.Freq4 = 1;
Var.Freq5 = 1;
Var.Freq7 = 1;
Var.Freq8 = 1;
% 

%load multibody parameter files
run('eMotion_8000_parameters.m');
run('eMotion_1500_parameters.m');
run('Robot_parameters.m');