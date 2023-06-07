%Following code is for Q1

sigma=11; % use different values
G = fspecial('gaussian', 2*ceil(3*sigma)+1, sigma);
faceIm = double(imread('affleck_gray.png'));
gIm = imfilter(faceIm, G, 'replicate');
imshow(gIm/255); % double images need range of 0-1
imwrite(uint8(gIm), 'gIm.bmp');

%Q1 code ends

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Following code is for Q2

[Gx Gy] = gaussDeriv2D(1);          %Code for function is at the end of this file


%Q2 code ends

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Following code is for Q3

rgbIm = imread('Lenna.png');
myIm = rgb2gray(rgbIm);
gxIm = double(imfilter(myIm, Gx, 'replicate'));
gyIm = double(imfilter(myIm, Gy, 'replicate'));
magIm = sqrt(gxIm.^2 + gyIm.^2);
imagesc(gxIm);
imagesc(gyIm);
imagesc(magIm);

%Q3 code ends

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Following code is for Q4

tIm = magIm > 5;        %Included images in report for T from -1 to +30
imagesc(tIm);

%Q4 code ends

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Following code is for Q5

Fx = -fspecial('sobel')';
fxIm = double(imfilter(myIm,Fx));
Fy = -fspecial('sobel');
fyIm = double(imfilter(myIm,Fy));
magIm = sqrt(fxIm.^2 + fyIm.^2);
tIm = magIm > 20;
imagesc(tIm);

%Q5 code ends

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Following code is for Q6

canIm = edge(myIm,'canny');
imagesc(canIm);

%Q5 code ends

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Following code is for function gaussDeriv2D from Q2

function [Gx, Gy] = gaussDeriv2D(sigma);
x=-ceil(2*sigma):1:ceil(2*sigma);       
y=-ceil(2*sigma):1:ceil(2*sigma);


% I used step-size of 0.1 to get the figures. Otherwise I used step-size of
% 1 to get Gx and Gy matrices

for i=1:1:length(x)
for j=1:1:length(y)
    Gx(i,j)=((x(i))/(2*pi*sigma^4))*(exp(-(x(i)^2+y(j)^2)/(2*sigma^2)));
    Gy(i,j)=((y(j))/(2*pi*sigma^4))*(exp(-(x(i)^2+y(j)^2)/(2*sigma^2)));

end
end
Gx      %To get Gx matrix
Gy      %To get Gy matrix
figure(1);
s=mesh(x,y,Gx)             %To print Gx mesh figure (Step size = 0.1)
s.FaceColor = 'flat';

figure(2);
s=mesh(x,y,Gy)             %To print Gy mesh figure (Step size = 0.1)
s.FaceColor = 'flat';
end

%Function code ends
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


