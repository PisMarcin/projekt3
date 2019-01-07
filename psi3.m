close all; clear all; clc;

wejscie = [-2 -1.6 -1.2 -0.8 -0.4 0 0.4 0.8 1.2 1.6 2];
wyjscie = [1.6633e+03 1.6880e+03 1.6867e+03 1.7764e+03 1.7800e+03 0.0 1.9495e+03 1.9825e+03 2.1477e+03 2.1791e+03 2.3262e+03];
testowe = zeros(1);
net = feedforwardnet(3); 
net.trainFcn = 'traingd';
net.trainParam.lr = 0.000001; 
net.trainParam.mc = 0.1; 
net = train(net, wejscie, wyjscie);
efekty = zeros(size(net));
for i = 1:11
    testowe(i) = RastrignTest3D(wejscie(i)); 
    efekty(i) = sim(net, wejscie(i)); 
end   