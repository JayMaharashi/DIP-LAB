% Write a program in MATLAB to show Image Enhancement using various filters: “SOBEL”, “PREWITT”, and “LAPLACIAN”.

I = imread('Test.jpg');
subplot(2,2,1);
imshow(I);
title('Original Image');

% Prewitt Filter
H = fspecial('prewitt');
MotionBlur = imfilter(I,H,'replicate');
subplot(2,2,2);
imshow(MotionBlur);
title('Prewitt Image');

% Sobel Filter
H = fspecial('sobel');
MotionBlur = imfilter(I,H,'replicate');
subplot(2,2,3);
imshow(MotionBlur);
title('Sobel Image');

% Laplacian Filter
H = fspecial('Laplacian',0.2);
MotionBlur = imfilter(I,H,'replicate');
subplot(2,2,4);
imshow(MotionBlur);
title('Laplacian Image');
