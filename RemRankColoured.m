I  = imread('fimg.jpg');
noisyI = imnoise(I , 'salt & pepper',0.05);

Rch = noisyI( : , : , 1);
Gch = noisyI( : , : , 2);
Bch = noisyI( : , : , 3);

remrch = ordfilt2(Rch , 15, ones(5));
remgch = ordfilt2(Gch , 15, ones(5));
rembch = ordfilt2(Bch , 15, ones(5));

noiseFree = cat(3 , remrch , remgch , rembch);
subplot(1 , 2 , 1); imshow(noisyI);subplot(1 , 2 , 2); imshow(noiseFree);