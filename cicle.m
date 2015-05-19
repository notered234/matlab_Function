% function m file   //函式.m檔的寫法
% function [ouput1, output2] = functionName(input1, input2)
% //output 兩個以上要用中括號; input 兩個以上要用小括號。
% save functionName.m //存檔要跟「函式名」相同
%
% help cicle
% circle(r) 
% input r is the radius of the circle //輸入值是「圓的半徑」
% output A　circleArea 是圓面積; L　circleLong　是圓周長。
function [A, L] = cicle(r)
    % circleArea
    A = pi*r^2;
    % circleLong
    L = 2*pi*r;



