//Fatine BENTIRES ALJ - MAIN5

SetFactory('OpenCASCADE');
Sphere(1) = {0,0,0,1};
//Cone(indice)= {x,y,z, dx,dy,dz,R1, R2} : Cône de centre x,y,z , de direction dx,dy,dz et de rayons R1 et R2 (qui peuvent être nuls).
Cone(2)= {0,0,0.5,0,0,1,1.5,0};

BooleanUnion{ Volume{1}; Delete;}{ Volume{2}; Delete;} //delete = Veillez à ce que, au final, il n’y ait qu’un seul Volume. 