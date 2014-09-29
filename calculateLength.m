% % % calculate length of a given member between two points
function length = calculateLength(x1,y1,x2,y2)
    length = sqrt((x2-x1)^2 + (y2-y1)^2);
end
