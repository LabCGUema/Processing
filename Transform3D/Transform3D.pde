// Habilitando modo 3D
void setup()  {
  size(640, 360, P3D);
  noStroke();
  fill(204);
}

void draw()  {
  background(0);
  lights();
  float fov = PI/3.0; 
  float cameraZ = (height/2.0) / tan(fov/2.0); 
  perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  
  // Objeto original
  translate(160, 90, 0);
  rotateX(-PI/6);
  box(80); 
  
  // Objeto transladado
  // Rotação aplicada ao eixo X para permitir visualização
  pushMatrix();
  translate(320, 180, 0);
  rotateX(-PI/6);
  box(80); 
  popMatrix();
}