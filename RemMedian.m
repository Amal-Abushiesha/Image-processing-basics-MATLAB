I = imread('fimg.jpg');
noisyI = imnoise(I , 'salt & pepper', 0.05);
%Median : separate channels

Rch = noisyI( :  , : , 1);
Gch = noisyI( :  , : , 2);
Bch = noisyI( :  , : , 3);

remrch = medfilt2(Rch , [3 3]);
remgch = medfilt2(Gch , [3 3]);
rembch = medfilt2(Bch , [3 3]);

noiseFree = cat(3, remrch, remgch , rembch);
subplot(1 , 2 , 1); imshow(noisyI);subplot(1 , 2 , 2); imshow(noiseFree);
