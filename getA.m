function A_coarse = getA(img, ps)
[h,w,c] = size(img);
A_coarse = zeros(h,w,c,'double');
[~,~,V] = imsplit(rgb2hsv(img));

ps = min([ps ceil(min(h, w)/10)]);

for i = 1:ps:h
    beg_h = i;
    end_h = i+ps-1; 
    if end_h > h
        end_h = h;
    end
    for j = 1:ps:w
        beg_w = j;
        end_w = j+ps-1;
        if end_w > w
            end_w = w;
        end
        % patches
        Vpatch = V(beg_h:end_h,beg_w:end_w);
        img_patch = img(beg_h:end_h,beg_w:end_w,:);
        % find index of the max value
        [~, position_max] = max(Vpatch(:));
        [x, y] = ind2sub(size(Vpatch),position_max);
        % find original pixel value
        value = img_patch(x, y, :);
        value_mat = repmat(value, [end_h-beg_h+1 end_w-beg_w+1 1]);
        A_coarse(beg_h:end_h,beg_w:end_w,:) = value_mat;
    end
end
end