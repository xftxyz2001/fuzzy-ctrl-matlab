clc;
% clear all;
close all;

tic;
A = [.2, .3, .4; 0, 1, 0.1; .8, .7, .3];
B = [.1, .4; .3, .5; .9, .3];
C = [.4, .5; .8, .6];

S = syn(A, B);
U = syn(S, C);

T = syn(B, C);
V = syn(A, T);

W = U - V;

toc;
