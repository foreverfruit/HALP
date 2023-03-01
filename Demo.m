close all;
clear;clc;

img_path = 'img/hazy_img/DIOR_TEST_13004.jpg';

% Considering the processing efficiency, the side window box filter is used here to calculate 
% the approximate dark channel map, so we need to introduce an additional parameter for adjustment. 
% Moreover, when dehazing, a very small amount of haze is often retained for realistic visual perception 
% (the parameter $\omega$  in DCP). Therefore, we use parameter k in our implementation to satisfy both 
% of the above requirements simultaneously, which varies from 0.6 to 0.9 for different images, 
% with a default setting of 0.75.

patch_size = 57;
swf_size = 17;
k = 0.75;

[J, T, A, A_coarse, img] = HALP(img_path, patch_size, swf_size, k);
imtool([A_coarse A]);
imtool(T)
imtool([img J]);


