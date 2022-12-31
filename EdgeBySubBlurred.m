I = imread('fimg.jpg');
avg = fspecial('average' , [15 15]);
BlurryImg = imfilter(I , avg , 1);
SubtractedEdges = I - BlurryImg;
subplot(1 , 3 , 1); imshow(I); title('Original');
subplot(1 , 3 , 2); imshow(BlurryImg);title('Blurred');
subplot(1 , 3 , 3); imshow(SubtractedEdges);title('After Subtraction');
