x = imread('fimg.jpg');
y = transformation(x, 'crop',[500 2 1000 2002]);
y = transformation(y, 'resize','bicubic' , 2);
y = transformation(y, 'rotate',130, 'bilinear' , 'loose');
subplot(1 , 2 , 1), imshow(x);
subplot(1 , 2 , 2), imshow(y);
