clc;
% clear all;
clear;
close all;

tic;

x = [1, 2, 3, 4, 5];
A = [.2, .8, 1, .8, .2];
B = [0, .4, .9, .4, .1];
C = [1, .5, 0, .5, 1];

X = fuzzy_func(A, B, C);

toc;
