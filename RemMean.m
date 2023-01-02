I = imread('fimg.jpg');
noisyI = imnoise(I , 'salt & pepper', 0.05);

%Kernel manual
manual_mean = ones(3,3)/9;
noiseFree = imfilter(noisyI , manual_mean);

subplot(1 , 2 , 1); imshow(noisyI);subplot(1 , 2 , 2); imshow(noiseFree);
