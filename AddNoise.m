I = imread('fimg.jpg');
noisyI = imnoise(I , 'salt & pepper', 0.05);

subplot(1 , 2 , 1); imshow(I);subplot(1 , 2 , 2); imshow(noisyI);
