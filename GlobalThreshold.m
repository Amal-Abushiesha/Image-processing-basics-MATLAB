I = imread('fimg.jpg');

threshValue = graythresh(I);
bw = im2bw(I , threshValue);

subplot(1 , 2 , 1); imshow(I); title('Original');
subplot(1 , 2 , 2); imshow(bw);title('Global Threshold');
