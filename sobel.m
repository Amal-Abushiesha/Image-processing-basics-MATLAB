I = imread('fimg.jpg');
grayScaledImg = rgb2gray(I);
edges = edge(grayScaledImg, 'sobel');
subplot(1 , 2 , 1); imshow(grayScaledImg);subplot(1 , 2 , 2); imshow(edges);
