// Figura de exemplo
void house()
{
  triangle(15, 0, 0, 15, 30, 15);
  rect(0, 15, 30, 30);
  rect(12, 30, 10, 15);
}

// Notar que as coordenadas do sistema começam em (0, 0)
// a partir do canto superior esquerdo
void setup()
{
  size(640, 480);
  background(255);
  
  for(int i = 0; i <= width; i++){
    point(i, height/2);
  }
  for(int i = 0; i <= height; i++){
    point(width/2, i);
  }
  
  // Objeto original
  stroke(231, 124, 43);
  house();
  
  // Objeto transladado para não sobrescrever objeto original
  pushMatrix();
  translate(80, 0);
  shearX(0.2);
  stroke(122, 234, 23);
  house();
  popMatrix();
}