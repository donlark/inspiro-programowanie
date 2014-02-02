
Snake snake;

int instruction=0;

void setup(){
   size(400,400);
   
   loop();
   
   smooth();
   
   frameRate(3);
   
   background(0,0,0);
   
   snake = new Snake(400,400,20); 
   snake.obstacles(3);
}

void draw(){
  executeProgram("GWWQQ");
  
  background(0,0,0);
  snake.display();
}

void executeProgram(String program) {
  if(snake.wonTheGame()){
     return; 
  }
  
  if(program.length() == 0){
     return; 
  }
  if(program.charAt(instruction) == 'L'){
     snake.move(-1,0);  
  } 
  else if(program.charAt(instruction) == 'P'){
     snake.move(1,0);
  }
  else if(program.charAt(instruction) == 'G'){
     snake.move(0,-1);
  }
  else if(program.charAt(instruction) == 'D'){
     snake.move(0,1);
  }
  else if(program.charAt(instruction) == 'W'){
     snake.move(1,-1);
  }
  else if(program.charAt(instruction) == 'Q'){
     snake.move(-1,-1);
  }
  instruction = instruction + 1;
  instruction = instruction % program.length();
}


