I = imread('fimg.jpg');
StratchedImage = imadjust(I , [15/255 200/255] , [0 1]);  %RESULT IS A brightened Image
subplot(1 , 2 , 1); imshow(I); title('Original');
subplot(1 , 2 , 2); imshow(StratchedImage);title('After Stetching the range');
