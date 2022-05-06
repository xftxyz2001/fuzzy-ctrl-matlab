clc;
clear all;
close all;
tic;

R = [.1, .3; .2, 1];
S = [.4, .9; .5, .8];
T = [0, .2; .7, .6];

[V, W] = mix_syn(R, S, T);

toc;
