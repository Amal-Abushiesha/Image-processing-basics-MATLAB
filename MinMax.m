I = imread('fimg.jpg');
bw = im2bw(I);
minf = @(x) min(x(:));
maxf = @(x) max(x(:));
MinImg = nlfilter(bw, [3 3] , minf);
MaxImg = nlfilter(bw, [3 3] , maxf);

subplot(1 , 4 , 1); imshow(I);title('Applying Min and Max Filters');

subplot(1 , 4 , 2); imshow(bw);title('Black and white Image');

subplot(1 , 4 , 3); imshow(MinImg);title('Min Image');

subplot(1 , 4 , 4); imshow(MaxImg);title('Max Image');