clear;clc;clear all
close all

X = round(255*rand(20,100));
r = 10;

dim = size(X);

B = 10*rand(dim(1),r);
B = B./(ones(dim(1),1)*sum(B));

H = 10*rand(r,dim(2));

maxiter = 10000;

for iter = 1:maxiter
    H=H.*(B'*(X./(B*H)));
    B=B.*((X./(B*H))*H');
    B=B./(ones(dim(1),1)*sum(B));
end