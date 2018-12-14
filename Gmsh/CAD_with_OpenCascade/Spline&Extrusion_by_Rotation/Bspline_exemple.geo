//Fatine BENTIRES ALJ - MAIN5

SetFactory("OpenCASCADE");
h = 1;
Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h;
Point(1) = {0,4,0,h};
Point(2) = {5,2,0,h};
Point(3) = {10,8,0,h};
Point(4) = {15,4,0,h};
Point(5) = {20,10,0,h};
Point(6) = {20,0,0,h};
Point(7) = {0,0 ,0,h};
Spline(1) = {1,2,3,4,5}; //pour rejoindre les points entre eux 

//Line(1) est faite par défaut 
Line(2) = {5,6}; //on relie les points 5 et 6 pour fermer le vase 
Line(3) = {7,1}; //pareil avec les points 7 et 1

Extrude {{1,0,0},{0,0,0},2*Pi}{Line{1,2,3};} //si on met pi on obtient que la moitié du vase 

Surface Loop(1) = {1,2,3}; //surface précisée dans l'onglet visibility
Volume(1) ={1}; //pour créer un volume à partir de surfaces
