I = imread('fimg.jpg');
noisyI = imnoise(I , 'salt & pepper', 0.05);

% gauss = fspecial('gaussian' , [3 3] , 9);
% noiseFree = imfilter(noisyI, gauss);
% subplot(1 , 2 , 1); imshow(noisyI);subplot(1 , 2 , 2); imshow(noiseFree);
%Gaussian : separate channels

Rch = noisyI( :  , : , 1);
Gch = noisyI( :  , : , 2);
Bch = noisyI( :  , : , 3);

gauss = fspecial('gaussian' , [3 3], 15);

remrch = imfilter(Rch , gauss);
remgch = imfilter(Gch , gauss);
rembch = imfilter(Bch , gauss);

noiseFree = cat(3, remrch, remgch , rembch);
subplot(1 , 2 , 1); imshow(noisyI);subplot(1 , 2 , 2); imshow(noiseFree);
