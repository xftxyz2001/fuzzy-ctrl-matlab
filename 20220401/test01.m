clc;
% clear all;
close all;

tic;
S = [.1, .2; .7, .8];
T = [.3, .5; .6, .4];
U = syn(S, T);
V = syn(T, S);
toc;
