clc; clear; close all;
tic;
A = [.2, .6, 1, .6, .2]; B = [0, 0, 0, .3, .6, .9, 1];
a = [.1, .3, .6, .9, 1];
b = MZ_inference(A, B, a);
toc;
