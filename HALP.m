function [J, T, A, A_coarse, img] = HALP(img_path, patch_size,swf_size, k)
%% read img
img = imread(img_path);
img = im2double(img);
img_max = max(img, [], 3);
[h, w] = size(img_max);

%% A
A_coarse = getA(img, patch_size);
gf_r = patch_size*6 + 1;
if gf_r> min([h, w])
    gf_r = min([h, w])-1;
end
A = imguidedfilter(A_coarse, img_max, 'NeighborhoodSize', [gf_r, gf_r], 'DegreeOfSmoothing', 0.5);

%% T
normImg = img./A;
min_img = min(normImg,[],3);
swf_dark = SWF(min_img, swf_size);
T = 1-k*swf_dark; 
T(T>1) = 1;
T(T<0.1) = 0.1;

%% J
T_ = repmat(T, [1, 1, 3]);
J = (img - A) ./ T_ + A;

end
