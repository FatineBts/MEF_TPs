//Fatine BENTIRES ALJ - MAIN5

h = 1; //Taille caractéristique des éléménts
Point(1) = {0, 0, 0, h};   // Construction des points
Point(2) = {10, 0, 0, h};
Point(3) = {10, 10, 0, h};
Point(4) = {0, 10, 0, h};
Line(1) = {1,2};   //Des lignes
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};
Line Loop(1) = {1,2,3,4};   //Définition d'un pourtour (d'un bord)
Plane Surface(1) = {1};     //Définition d'une surface
Physical Surface(1) = {1};  //A sauvegarder dans le fichier de maillage