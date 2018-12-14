//Fatine BENTIRES ALJ - MAIN5

DefineConstant[
  h = {0.1, Min 0.1, Max 1, Step 0.1, Name "Geometrie/h"},
  lx  = { 2, Min 0.5, Max 10, Step 0.1, Name "Geometrie/Lx"},
  ly  = { 1, Min 0.5, Max 10, Step 0.1, Name "Geometrie/Ly"}
];

Point(1) = {0, 0, 0, h};   // Construction des points
Point(2) = {lx, 0, 0, h};
Point(3) = {lx, ly, 0, h};
Point(4) = {0, ly, 0, h};
Line(1) = {1,2};   //Les lignes
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};
Line Loop(1) = {1,2,3,4};   //Le  bord
Plane Surface(1) = {1};     //La surface du rectangle
Physical Surface(1) = {1};  //Ce que l'on souhaite sauvegarder
