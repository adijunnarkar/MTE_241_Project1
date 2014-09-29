% % % function to calculate the spring constant for a member
function k = calculateK(area, modulus, length)
    % K = AE/L
    k = (area * modulus) / length;
end