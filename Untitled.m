clear;
clc;
x = imread('test.jpg');
x = imresize(x,0.1);
xbw = rgb2gray(x);

%% 1st Derivative
x_edge_1 = edge(xbw, 'sobel');
figure;
imshow(x_edge_1);

%% 2nd Derivative
x_edge_2 = edge(xbw, 'log');
figure;
imshow(x_edge_2);

%% Canny Method
x_edge_3 = edge(xbw, 'canny');
figure;
imshow(x_edge_3);

%% Conclusion
%  By comparing all the images side by side, it appears that Canny's method
%  is more sensitive to edges in compare to 1st and 2nd Derivative methods.
