function NewImg = AvgMode (I, mode , varargin)
if nargin == 3
    kernelSize = varargin{1};
end

switch mode
    case 'default'
        NewImg = imfilter(I, fspecial('average', kernelSize));
    case 'manual'
        kernel = [1 2 1; 2 4 2; 1 2 1]/16;
        %kernel = [blabla_1  , blabla_2  , blabla_3] = blabla_1 + blabla_2 + blabla_3
        NewImg = imfilter(I, kernel);

end