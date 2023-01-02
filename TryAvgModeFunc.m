I = imread('fimg.jpg');
%NewImg = AvgMode(I , 'default' , 15);
NewImg = AvgMode(I , 'manual');
subplot(1 , 2 , 1), imshow(I);
subplot(1 , 2 , 2), imshow(NewImg);
