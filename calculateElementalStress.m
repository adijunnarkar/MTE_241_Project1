function combinedStressMatrix = calculateElementalStress(node_matrix, element_matrix, gU)

    m = size(element_matrix,1); % m is the number of elements
    combinedStressMatrix = zeros(4,m);
    
    for i = 1:m
        node1 = element_matrix(i,1);
        node2 = element_matrix(i,2);
        
        x1 = node_matrix(node1,1);
        y1 = node_matrix(node1,2);
        x2 = node_matrix(node2,1);
        y2 = node_matrix(node2,2);
        
        length = calculateLength(x1,y1,x2,y2);
        modulus = element_matrix(i,3); %Young's modulus for corresponding element
        area = element_matrix(i,4); %cross-sectional area of corresponding element
        
        k = calculateK(area,modulus,length); % the stiffness constant of the element
        
        ab = calculateAB(x1,y1,x2,y2,length); %1*2 matrix with [a b] for KEff matrix calculation
        KEff = calculateKEff(ab, k); 
        T = calculateTransformationMatrix(ab);
        
        elemDisplacementVector = gU( [2*node1 - 1, 2*node1 , 2*node2 - 1, 2*node2],: );
        elemStressVector = (1/area)* KEff * T * elemDisplacementVector;
        combinedStressMatrix(1:4,i) = elemStressVector;    
    end
end
