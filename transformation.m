
function new_img  = transformation(img, method, varargin)
% img, method, rotate_deg, interpolation, bbox, crop_rect, magnification

% crop -> img , rect +"methodff
% rotate ->img, angle , interpolation, bbox +"methodfff
% resize ->img , scale + "methoddff
% 

if nargin == 3
    crop_rect = varargin{1};
elseif nargin == 4
    interpolation = varargin{1};
    magnification = varargin{2};
else 
   rotate_deg = varargin{1};
   interpolation = varargin{2};
   bbox = varargin{3};  
end
        
switch method
		case 'rotate'
					new_img = imrotate(img, rotate_deg , interpolation, bbox);
		case 'crop'
					new_img = imcrop(img, crop_rect);
		case 'resize'
					new_img = imresize(img, magnification , interpolation);
end
end

