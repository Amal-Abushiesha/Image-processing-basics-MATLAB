%edge detection by subtracting blurred,
%then black and white with threshold = 0

I = imread('fimg.jpg');
avg = fspecial('average' , [15 15]);
BlurryImg = imfilter(I , avg , 1);

SubtractedEdges = I - BlurryImg;
bw = im2bw(SubtractedEdges , 0);

subplot(1 , 3 , 1); imshow(I); title('Original');
subplot(1 , 3 , 2); imshow(SubtractedEdges);title('After Subtraction');
subplot(1 , 3 , 3); imshow(bw);title('after threshold');
