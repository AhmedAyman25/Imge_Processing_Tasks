function result = max_filter(im, M)
    k = (M-1) / 2;
    im = padarray(im, [k, k]);
    
    [H, W] = size(im);
    result = zeros(H, W);
    
    for i = 1+k:H-k
        for j = 1+k:W-k
            subimg = im(i-k:i+k, j-k:j+k);
            result(i, j) = max(max((subimg)));
        end
    end
    
    result = result(1+k:H-k, 1+k:W-k);
    result = uint8(result);
end