clc; clear all; close all;
%% Fig 1a
b=1.77; torus=0; p=0.1; self_interaction=1; rounds=200; n=200;
close all;
Spatial_PD_8_NN(b,torus,p,self_interaction,rounds,n,0,1,1,0);
%% Fig 1b
b=1.90; torus=0; p=0.1; self_interaction=1; rounds=200; n=200; limit=0.318;
close all;
Spatial_PD_8_NN(b,torus,p,self_interaction,rounds,n,0,1,1,limit);
%% Fig 2a
b=1.90; torus=0; p=0.6; self_interaction=1; rounds=300; n=200; limit=0.318;
close all;
Spatial_PD_8_NN(b,torus,p,self_interaction,rounds,n,0,0,1,limit);
%% Fig 3, 2b
b=1.90; torus=0; p=0; self_interaction=1; rounds=1000; n=99; limit=0.318;
close all;
Spatial_PD_8_NN(b,torus,p,self_interaction,rounds,n,1,1,1,limit); 
%% Fig 3, 2b as torus
b=1.90; torus=1; p=0; self_interaction=1; rounds=200; n=99; limit=0.318;
close all;
Spatial_PD_8_NN(b,torus,p,self_interaction,rounds,n,1,1,1,limit); 
%% Fig 3, 2b without self interaction
b=1.62; torus=0; p=0.1; self_interaction=0; rounds=200; n=99; limit=0.299;
close all;
Spatial_PD_8_NN(b,torus,p,self_interaction,rounds,n,0,1,1,limit);
%% Fig extra b=2.5
b=2.5; torus=0; p=0.1; self_interaction=1; rounds=70; n=99;
close all;
Spatial_PD_8_NN(b,torus,p,self_interaction,rounds,n,0,1,1,0);
%% 4 Neighbours
b=1.8; torus=0; p=0.1; self_interaction=1; rounds=200; n=99;
close all;
Spatial_PD_4_NN(b,torus,p,self_interaction,rounds,n,1,1);

b=1.4; torus=0; p=0.1; self_interaction=0; rounds=200; n=99;
close all;
Spatial_PD_4_NN(b,torus,p,self_interaction,rounds,n,1,1);