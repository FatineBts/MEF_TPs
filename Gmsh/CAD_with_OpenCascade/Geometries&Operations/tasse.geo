//Fatine BENTIRES ALJ - MAIN5

SetFactory('OpenCASCADE');

Cylinder(1) = {0,0,0,0,1,0,0.5};
//Cylinder(indice)= {x,y,z, xv, yv, zv, R, alpha} : 
//Créer un cylindre de rayon R à partir d’un cercle de centre x,y,z extrudé selon le vecteur xv,yv,zv . 
//Le paramètre alpha est optionnel et représente l’ouverture angulaire.
//Torus(indice)= {x,y,z,R1, R2} : Tor de rayons R1 et R2 et de centre x,y,z .
Cylinder(2) = {0,0.1,0,0,1.3,0,0.45};
Torus(3) = {0.45,0.5,0,0.35,0.1}; 

BooleanUnion{Volume{1};Delete;}{Volume{3};Delete;}
BooleanDifference{Volume{3};Delete;}{Volume{2};Delete;}