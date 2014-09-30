% % % fcn to calculate the transformation matrix 
function T = calculateTransformationMatrix(ab)

  a = ab(1,1);
  b = ab(1,2);
  
  T = [   a, b , 0, 0 ;
         -b, a,  0, 0 ;
          0, 0,  a, b ;
          0, 0, -b, a ];
  end
