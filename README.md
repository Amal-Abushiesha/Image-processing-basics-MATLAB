Some Basic Image processing codes for:
- Adding salt and pepper noise
- Removing noise using:
  * Average filter:
       - fspetial built in average
       - 3*3 manual kernel
  * Median filter
  * Gaussian filter
  * rank filter (ordfilt2)
- Edge detection:
       - sobel
       - canny
       - unsharp masking
- Global Threshold
- Adaptive threshold
- Spatial Transform:
  * Crop
  * Rotate
  * Resize
  
  Two functions included
  1 - A function that takes an image and applies spatial transformation to it according to a method parameter (crop - rotate - resize)
Make sure you don't need to pass all the additional parameters when calling the function.
(HINT: use varargin)
Files:  
  - transformation
  -  TryTransform
2 - A filter that takes a mode parameter (default, manual) 
    * if default apply average 
    *apply a the kernel written in the function file
          
