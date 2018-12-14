//Fatine BENTIRES ALJ - MAIN5

DefineConstant[
  R = {1, Min 0.5, Max 10, Step 0.1, Name "R"},
  h = {0.1, Min 0.01, Max 10, Step 0.01, Name "h"},
  Rint = {0.2, Min 0.1, Max 0.4, Step 0.1, Name "Rint"}
];
xc = 0;
yc = 0;
Point(1) = {xc, yc, 0, h};
Point(2) = {xc + R, yc, 0, h};
Point(3) = {xc, yc + R, 0, h};
Point(4) = {xc - R, yc, 0, h};
Point(5) = {xc, yc - R, 0, h};

Point(6) = {xc, yc, 0, h};
Point(7) = {xc + Rint, yc, 0, h};
Point(8) = {xc, yc + Rint, 0, h};
Point(9) = {xc - Rint, yc, 0, h};
Point(10)= {xc, yc - Rint, 0, h};

Circle(1) = {2,1,3};
Circle(2) = {3,1,4};
Circle(3) = {4,1,5};
Circle(4) = {5,1,2};

Circle(5) = {7,6,8}; 
Circle(6) = {8,6,9};
Circle(7) = {9,6,10};
Circle(8) = {10,6,7};

Line Loop(1) = {1,2,3,4};   //Définition d'un pourtour (d'un bord)
Line Loop(2) = {5,6,7,8};   //Définition d'un pourtour (d'un bord)
Plane Surface(1) = {1,2};     //Définition d'une surface
Physical Surface(1) = {1};  //A sauvegarder dans le fichier de maillage