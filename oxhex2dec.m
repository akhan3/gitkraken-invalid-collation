% convert hexadecimal to decimal notation
function d = oxhex2dec(h)
    for k = 1:numel(h)
        if startsWith(strtrim(h{k}), '0x', 'IgnoreCase',true)
            h{k} = h{k}(3:end);
        end
    end
    d = hex2dec(h);
    % new line
    % new line
    % new line
end
