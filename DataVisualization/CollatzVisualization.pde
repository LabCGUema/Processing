int[] sequence = {};
 
void collatz(int number){
  sequence = append(sequence, number);
  if(number == 1){
    return;
  } else if(number % 2 == 0){
    collatz(number/2);
  } else {
    collatz(3*number + 1);
  }
}

void setup(){
  // Configurar janela
  size(640, 480);
  background(255);
  
  // Eixos
  for(int i = 0; i <= width; i++){
    point(i, height/2);
  }
  for(int i = 0; i <= height; i++){
    point(width/2, i);
  }
  
  // Visualização
  int number = 10;
  collatz(number);
  println(sequence);
  
  for(int i = 0; i < sequence.length; i++){
    pushMatrix();
    color(123, 212, 23);
    ellipse(width/2 + i, height/2 - sequence[i], 5, 5);
    popMatrix();
  }
}