%NOTE!!!!!!!!!!!!!!!!!!!!1
%THIS IS ONLY FOR PRACTICE YOU DON'T HAVE TO STUDY THIS!!!!!!!!
%_________________YOU HAVE BEEN WARNED lol__________________________
I = imread('fimg.jpg');
NoisyI = imnoise(I , 'salt & pepper' , 0.2);
noiseFree = removeNoise(NoisyI , 'Rank', 15 , ones(5));
subplot(1 , 2 , 1), imshow(NoisyI); title('Noisy Image');
subplot(1 , 2 , 2), imshow(noiseFree); title('Noise Free Image');
