//Fatine BENTIRES ALJ - MAIN5

SetFactory("OpenCASCADE");

h = 0.1; // ou ce que vous voulez
Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h;

Cylinder(1) = {0,0.05,0,0,0.55,0,0.45};
Box(2) = {-0.5,0.3,-0.25,1,0.3,0.5};
Cylinder(3) = {0,0.4,-0.5,0,0,1,0.1};
Cylinder(4) = {0,-0.2,0,0,0.3,0,0.3};

BooleanDifference{Volume{1};Delete;}{Volume{3};Delete;}
BooleanDifference{Volume{1};Delete;}{Volume{2};Delete;}
BooleanUnion{Volume{1};Delete;}{Volume{4};Delete;} //pour avoir un seul volume
