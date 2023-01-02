I = imread('fimg.jpg');
Edges = imfilter(I, fspecial('laplacian'));
subplot(1 , 2 , 1); imshow(I);subplot(1 , 2 , 2); imshow(Edges);