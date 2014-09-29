function updatedK = updateGlobalStiffnessMatrix(K, localK, globalNodeFor1, globalNodeFor2)
    K([2*globalNodeFor1 - 1, 2*globalNodeFor1], [2*globalNodeFor1 - 1, 2*globalNodeFor1]) = K([2*globalNodeFor1 - 1, 2*globalNodeFor1], [2*globalNodeFor1 - 1, 2*globalNodeFor1]) + localK([1,2], [1,2]);
    K([2*globalNodeFor1 - 1, 2*globalNodeFor1], [2*globalNodeFor2 - 1, 2*globalNodeFor2]) = K([2*globalNodeFor1 - 1, 2*globalNodeFor1], [2*globalNodeFor2 - 1, 2*globalNodeFor2]) + localK([1,2],[3,4]);
    K([2*globalNodeFor2 - 1, 2*globalNodeFor2], [2*globalNodeFor1 - 1, 2*globalNodeFor1]) = K([2*globalNodeFor2 - 1, 2*globalNodeFor2], [2*globalNodeFor1 - 1, 2*globalNodeFor1]) + localK([3,4],[1,2]);
    K([2*globalNodeFor2 - 1, 2*globalNodeFor2], [2*globalNodeFor2 - 1, 2*globalNodeFor2]) = K([2*globalNodeFor2 - 1, 2*globalNodeFor2], [2*globalNodeFor2 - 1, 2*globalNodeFor2]) + localK([3,4], [3,4]);
    updatedK = K;
end