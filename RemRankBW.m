I  = imread('fimg.jpg');
noisyI = imnoise(I , 'salt & pepper',0.05);

bw = im2bw(I);

max_fil = ordfilt2(bw,9,ones(3));
min_fil = ordfilt2(bw,1,ones(3));

subplot(1 , 3 , 1); imshow(noisyI);subplot(1 , 3 , 2); imshow(max_fil);subplot(1 , 3 , 3); imshow(min_fil);
