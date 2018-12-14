//Fatine BENTIRES ALJ - MAIN5

h = 5; //Taille caractéristique des éléménts
Point(1) = {0, 0, 0, h};   // Construction des points
Point(2) = {100,0, 0, h};
Point(3) = {100,30, 0, h};
Point(4) = {50,30, 0, h};
Point(5) = {50,100, 0, h};
Point(6) = {0,100, 0, h};
Point(7) = {20,10, 0, h};
Point(8) = {30, 10, 0, h};
Point(9) = {30, 20, 0, h};
Point(10) = {20, 20, 0, h};

Line(1) = {1,2};   //Des lignes
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Line(5) = {5,6};
Line(6) = {6,1};
Line(7) = {7,8};
Line(8) = {8,9};
Line(9) = {9,10};
Line(10) = {10,7};
Line Loop(1) = {1,2,3,4,5,6};   //Définition d'un pourtour (d'un bord)
Line Loop(2) = {7,8,9,10};
Plane Surface(1) = {1};     //Définition d'une surface
Plane Surface(2) = {2};     //Définition d'une surface

Physical Surface(1) = {1};
Physical Surface(2) = {2};