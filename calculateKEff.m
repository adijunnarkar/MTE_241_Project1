% % % fcn to calculate the local stiffness matrix 
function KEff = calculateKEff(ab,k)

  a = ab(1,1);
  b = ab(1,2);
  
  KEff = k * [ a^2      a*b      -(a^2)   -(a*b);
               a*b      b^2      -(a*b)   -(b^2);
               -(a^2)   -(a*b)   a^2      a*b;
               -(a*b)   -(b^2)   a*b      b^2; ];
  end

  
