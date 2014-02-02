
Snake snake;

int programPos=0;

void setup(){
   size(400,400);
   loop();
   smooth();
   frameRate(3);
   background(0,0,0);
   snake=new Snake(400,400,20); 
   snake.obstackles(3);
}

void draw(){
  program("GWWQQ");
  
  background(0,0,0);
  snake.display();
}

void program(String program) {
  if(snake.wonTheGame()){
     return; 
  }
  snake.reset();
  if(program.length()==0){
   return; 
  }
  if(program.charAt(programPos)=='L'){
    snake.move(-1,0);  
  } 
  else if(program.charAt(programPos)=='P'){
    snake.move(1,0);
  }
  else if(program.charAt(programPos)=='G'){
    snake.move(0,-1);
  }
  else if(program.charAt(programPos)=='D'){
    snake.move(0,1);
  }
  else if(program.charAt(programPos)=='W'){
    snake.move(1,-1);
  }
  else if(program.charAt(programPos)=='Q'){
    snake.move(-1,-1);
  }
  programPos=programPos+1;
  programPos=programPos%program.length();
}


