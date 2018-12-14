//Fatine BENTIRES ALJ - MAIN5

h = 1;
Point(1) = {0, 0, 0, h};
Point(2) = {2, 0, 0, h};
Point(3) = {2, 2, 0, h};
Point(4) = {0, 2, 0, h};
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};
Line Loop(1) = {1,2,3,4};
Plane Surface(1) = {1};
Physical Line(1) = {1};
//un Elementary entity est un point, une line, une surface, un volume et possède un unique
//numéro Line(10) = {1,2}; // Le numéro de l'entité élémentaire est 10
//une physical entity englobe plusieurs Elementary Entities et c’est ce label qui sera enregistré dans le fichier de maillage