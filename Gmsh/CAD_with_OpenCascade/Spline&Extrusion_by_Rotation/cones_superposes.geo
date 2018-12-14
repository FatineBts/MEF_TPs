//Fatine BENTIRES ALJ - MAIN5

SetFactory('OpenCASCADE');

//Extrude { { xr, yr, zr }, {xp, yp, zp}, alpha } { Liste}

h = 0.1;
Point(1) = {0,1,0,h};
Point(2) = {0.5,0.5,0,h};
Point(3) = {0,0,0,h};
Line(1) = {1,2};
Line(2) = {2,3};
Extrude { {0,1,0}, {0,0,0}, 2*Pi}{Line{1,2};}