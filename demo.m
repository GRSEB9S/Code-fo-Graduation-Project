clear;clc;clear all
close all

tic;

X = round(255*rand(5,10));
r = 3;

dim = size(X);

B = 10*rand(dim(1),r);
B = B./(ones(dim(1),1)*sum(B));

H = 10*rand(r,dim(2));

maxiter = 1000000;

for iter = 1:maxiter
    H=H.*(B'*(X./(B*H)));
    B=B.*((X./(B*H))*H');
    B=B./(ones(dim(1),1)*sum(B));
end

toc;