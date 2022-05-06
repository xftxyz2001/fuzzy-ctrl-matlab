clc;
clear all;
close all;
tic;

A = [.2, .1; .4, .3];
B = [.9, 1; 0, .1];
C = [.1, .7; .2, 1];

AC = 1 - A;
BC = 1 - B;
CC = 1 - C;

AandBandC = min(min(A, B), C);
AorBorC = max(max(A, B), C);

AsynB_orC = max(syn(A, B), C);
Aand_BsynC = min(A, syn(B, C));

Aand_BsynC = and_syn(A, B, C);

toc;
