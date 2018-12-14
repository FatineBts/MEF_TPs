SetFactory('OpenCASCADE');

h = 0.1;
Mesh.Algorithm = 6;                 
Mesh.CharacteristicLengthMin = h; 
Mesh.CharacteristicLengthMax = h; 

Point(1) = {0,7,0,h}; 
Point(2) = {2,4.8,0,h}; 
Point(3) = {0.5,5,0,h}; 
Point(4) = {3,2.8,0,h}; 
Point(5) = {0.75,3,0,h}; 
Point(6) = {4,1,0,h}; 
Point(7) = {1,1,0,h}; 
Point(8) = {1,0,0,h}; 

Line(1) = {8,7};
Line(2) = {7,6};
Line(3) = {6,5};
Line(4) = {5,4};
Line(5) = {4,3};
Line(6) = {3,2};
Line(7) = {2,1}; 

Extrude {{0,1,0},{0,0,0},2*Pi}{Line{1,2,3,4,5,6,7};}

Curve Loop(9) = {8};
Surface(8) = {9};

Surface Loop(1) = {1,2,3,4,5,6,7,8};
Volume(1) = {1};
