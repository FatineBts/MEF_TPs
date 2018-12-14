//Fatine BENTIRES ALJ - MAIN5

DefineConstant[
  R1 = {10, Min 1, Max 10, Step 0.1, Name "R1"},
  h = {0.1, Min 0.01, Max 10, Step 0.01, Name "h"}
];

h = 5; //Taille caractéristique des éléménts
Point(1) = {0, -10, 0, h};   // Construction des points
Point(2) = {20,-10, 0,h};
Point(3) = {20,0,0,h};
Point(4) = {20+R1,0,0,h};
Point(5) = {20,10, 0,h};
Point(6) = {0,10,0,h}; 
Point(7) = {0-R1,0,0,h};
Point(8) = {0,0,0, h};

Line(1) = {1,2};   //Des lignes
Circle(2) = {2,3,4};
Circle(3) = {4,3,5};
Line(4) = {5,6};
Circle(5) = {6,8,7};
Circle(6) = {7,8,1};

Line Loop(1) = {1,2,3,4,5,6};   //Définition d'un pourtour (d'un bord) 
Plane Surface(1) = {1};     //Définition d'une surface
Physical Surface(1) = {1};

