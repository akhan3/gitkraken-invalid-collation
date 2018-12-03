% convert hexadecimal to decimal notation
function d = oxhex2dec(h)
    tic
    for k = 1:numel(h)
        if startsWith(strtrim(h{k}), '0x', 'IgnoreCase',true)
            h{k} = h{k}(3:end);
        end
    end
    d = hex2dec(h);
    toc
end
