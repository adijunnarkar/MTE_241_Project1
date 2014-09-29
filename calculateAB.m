% % % function to calculate a and b for the stiffness matrix
function ab = calculateAB(x1,y1,x2,y2,length)
    
    a = (x2-x1) / length;    
    b = (y2-y1) / length;
    
    ab = [a b];
end
    