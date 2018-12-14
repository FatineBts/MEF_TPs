//Fatine BENTIRES ALJ - MAIN5

SetFactory('OpenCASCADE');
Box(1) = {-0.5,-0.5,-0.5, 1, 1, 1};
Sphere(2) = {0,0,0, 0.65};
//Cone(indice)= {x,y,z, dx,dy,dz,R1, R2} : Cône de centre x,y,z , de direction dx,dy,dz et de rayons R1 et R2 (qui peuvent être nuls).
Cone(3)= {0,0.5,0,0,1,0,0.5,0.25};
Cone(4)= {0,-0.5,0,0,-1,0,0.5,0.25};
//Cylinder(indice)= {x,y,z, xv, yv, zv, R, alpha}
Cylinder(5) = {0.5,0,0,1,0,0,0.5};
BooleanIntersection{ Volume{1};Delete;}{ Volume{2};Delete;}
BooleanUnion{Volume{1};Delete;}{Volume{3,4,5}; Delete;}