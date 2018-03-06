%close all
%clear variables
%clc
%% 

% Chargement Trajectoire
% load '../Trajectoires/CommeMontoldre'
%load '../Trajectoires/lineAdams'
% load '../Trajectoires/lineAdamsLong'
% load '../simulator/Trajectoires/QuartAdams'
 %load '../Trajectoires/QuartAdams2'
% load '../Trajectoires/QuartAdamsX'
% load '../Trajectoires/QuartAdamsX2'
% load '../Trajectoires/QuartMont'
% load '../Trajectoires/QuartSerre'
% load '../Trajectoires/Robotics'
% load '../Trajectoires/Robotics2'
%load '../Trajectoires/TrajZAdams'

% figure(2)
% hold on;
% format time, y, x
%plot(TrajMere(:,2),TrajMere(:,3));

%  initial position of leader
x0=10;
z0=1;
theta0=0;

%  initial position of follower 1
x1=7;
z1=1;
theta1=0;

%  initial position of follower 2
x2=5;
z2=1;
theta2=0;

%  initial position of follower 3
x3=4;
z3=1;
theta3=0;

%  initial position of follower 4
x4=2;
z4=1;
theta4=0;

%longitudinal speed
V0=2; %m/s

%initial delta
%delta0=0;

L = 1;

% desired interdistance
d = 2; 
% sigmoid parameteres
ds = 0.5; %interdistance minimum
a = 2;

%sim('Platoon_Local')
%sim('Platoon_Global')
%sim('Platoon_Hybrid')

%ResultsPlatoon



