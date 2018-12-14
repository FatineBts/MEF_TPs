//Fatine BENTIRES ALJ - MAIN5

SetFactory("OpenCASCADE");

h = 1;
Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h;
profondeur_bouchon = 1;
angle = -Pi/4;

Point(1) = {0,3,0,h};
Point(2) = {5,3,0,h};
Point(3) = {10,5,0,h};
Point(4) = {15,6,0,h};
Point(5) = {25,0,0,h};
Point(6) = {0,0 ,0,h};
Spline(1) = {1,2,3,4,5}; //pour rejoindre les points entre eux 

Extrude {{1,0,0},{0,0,0},2*Pi}{Curve{1};} 

Curve Loop(2) = {2};
Surface(2) = {2};

Surface Loop(1) = {1,2}; //surface précisée dans l'onglet visibility
Volume(1) = {1}; //pour créer un volume à partir de surfaces

Cylinder(2) = {0.2,0,0,-1,0,0,1}; 

BooleanUnion{ Volume{1};Delete;}{ Volume{2};Delete;}


allPoints[] = Point "*";
allLines[] = Line "*";
allSurfaces[] = Surface "*";
allVolumes[] = Volume "*";
Rotate {{0, 0, 1}, {0, 0, 0}, angle} { Point{ allPoints[] } ; }
Rotate {{0, 0, 1}, {0, 0, 0}, angle} { Line{ allLines[] } ; }
Rotate {{0, 0, 1}, {0, 0, 0}, angle} { Surface{ allSurfaces[] } ; }
Rotate {{0, 0, 1}, {0, 0, 0}, angle} { Volume{ allVolumes[] } ; }

Box(3) = {-5,-15,0,3,3,3};
Rotate {{0,1,0}, {0,0,0},angle+Pi/2}{Volume{3};}
//Translate {10,0,0 } { Volume{2}; }
Mesh 2; 