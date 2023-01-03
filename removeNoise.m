%NOTE!!!!!!!!!!!!!!!!!!!!1
%THIS IS ONLY FOR PRACTICE YOU DON'T HAVE TO STUDY THIS!!!!!!!!
%_________________YOU HAVE BEEN WARNED lol__________________________


% Write a function that takes the noisy color image as input and performs 
% noise removal with a method ( average , median, Gaussian , Rank )

function noiseFree = removeNoise (NoisyI , method , varargin)
if nargin == 3
    kernelSize = varargin{1};
elseif nargin == 4
    order = varargin{1};
    domain = varargin{2};
end
%Separating The 3 channels for median , gaussian, rank
rCh = NoisyI( : , : , 1);
gCh = NoisyI( : , : , 2);
bCh = NoisyI( : , : , 3);

switch method
    case 'average'
        noiseFree = imfilter(NoisyI, fspecial("average" , kernelSize));
    case 'median'
        rCh = medfilt2(rCh , kernelSize);
        gCh = medfilt2(gCh , kernelSize);
        bCh = medfilt2(bCh , kernelSize);
        noiseFree = cat(3 , rCh ,gCh, bCh);
    case 'gaussian'
        rCh = imfilter(rCh , fspecial('gaussian', kernelSize));
        gCh = imfilter(gCh , fspecial('gaussian', kernelSize));
        bCh = imfilter(bCh , fspecial('gaussian', kernelSize));
        noiseFree = cat(3 , rCh ,gCh, bCh);
    case 'rank' %img , mode ,order , domain 
        nrCh = ordfilt2(rCh, order ,domain);
        ngCh = ordfilt2(gCh, order ,domain);
        nbCh = ordfilt2(bCh, order ,domain);
        noiseFree = cat(3 , nrCh ,ngCh, nbCh);
end

end
