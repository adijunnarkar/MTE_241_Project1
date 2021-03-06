% % % Main Code for Solving Trusses

% % % Below we declare all the points and identify all the members of the
% diagram we are given
x1 = 0;
y1 = 0;

x2 = 0.5;
y2 = 0;

x3 = 1;
y3 = 0;

x4 = 0.5;
y4 = 0.866;

% % % the values below represent the corresponding global node numbers for the local node 1 and 2 of each element
% index i is element number, index j is local node number for nij below
n11 = 1;
n12 = 2;
n21 = 2;
n22 = 3;
n31 = 3;
n32 = 4;
n41 = 1;
n42 = 4;
n51 = 2;
n52 = 4;

% % % Below values represent Young's Modulus values for each element
E1 = 200e9;
E2 = 200e9;
E3 = 200e9;
E4 = 200e9;
E5 = 200e9;

% % % Below values represent cross-sectional area values for each element
A1 = 0.0025;
A2 = 0.0025;
A3 = 0.0025;
A4 = 0.0025;
A5 = 0.0025;

nodes = [ x1 y1;    % % % recording coordinates of node 1
          x2 y2;    % % % recording coordinates of node 2
          x3 y3;    % % % recording coordinates of node 3
          x4 y4; ]; % % % recording coordinates of node 4

elements = [ n11 n12 E1 A1;    % % % recording start and end global node of element 1 and the Young's Modulus
             n21 n22 E2 A2;    % % % recording start and end global node of element 2
             n31 n32 E3 A3;    % % % recording start and end global node of element 3
             n41 n42 E4 A4;    % % % recording start and end global node of element 4
             n51 n52 E5 A5; ]; % % % recording start and end global node of element 5

gK = calculateKGlobalStiffness(nodes,elements);


FIXED = [     ]; % Vector of boundary conditions
FREE = [      ]; % Vector of nodes that are free 

        