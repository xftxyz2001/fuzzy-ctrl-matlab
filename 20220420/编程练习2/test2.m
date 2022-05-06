clc;
% clear all;
clear;
close all;
tic;

M = [.7, .4, .6; 1, .8, .2];
N = [.3, .7, .9; .1, 0, .5];
R = [.4, 1, .9; .1, .5, .3; .8, .9, 0];

[V, X] = mix_fuzzy_op(M, N, R);
[Y, W] = mix_fuzzy_op(N, M, R);

% [V, W] = mix_fuzzy_op(M, N, R);
toc;
V
W
