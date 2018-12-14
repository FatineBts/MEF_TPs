//Fatine BENTIRES ALJ - MAIN5

SetFactory('OpenCASCADE');
Box(1) = {-0.5,-0.5,-0.5, 1, 1, 1};
Sphere(2) = {0,0,0, 0.65};
BooleanIntersection{ Volume{1}; Delete;}{ Volume{2}; Delete;}