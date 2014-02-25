
GameMaster gameMaster;

int instruction = 0;

void setup(){
  size(400,400);
   
  loop();
   
  smooth();
   
  frameRate(3);
   
  background(0,0,0);
   
  gameMaster = new GameMaster(400,400,20); 
  gameMaster.level(1);
}

void draw(){
  executeProgram("PPGGGLLGGG");
  
  background(0,0,0);
  
  gameMaster.displayBoard();
}

void executeProgram(String program) {
  if(program.length() == 0){
    return; 
  }
  
  if(program.charAt(instruction) == 'L'){
    gameMaster.move(-1,0);  
  } 
  else if(program.charAt(instruction) == 'P'){
    gameMaster.move(1,0);
  }
  else if(program.charAt(instruction) == 'G'){
    gameMaster.move(0,-1);
  }
  else if(program.charAt(instruction) == 'D'){
    gameMaster.move(0,1);
  }
  else if(program.charAt(instruction) == 'W'){
    gameMaster.move(1,-1);
  }
  else if(program.charAt(instruction) == 'Q'){
    gameMaster.move(-1,-1);
  }
  instruction = instruction + 1;
  instruction = instruction % program.length();
}
