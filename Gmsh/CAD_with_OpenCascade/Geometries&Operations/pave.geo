//Fatine BENTIRES ALJ - MAIN5

SetFactory("OpenCASCADE"); //demande le moteur de CAO OpenCASCADE

h = 0.1; // ou ce que vous voulez
Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h; //pour garder le controle sur la finesse des mailles 

Box(1) = {0,0,0,3,3,3};//point en bas à gauche de coordonnées (0,0,0) (x,y,z) de longueur (3,3,3)

