void setup()  {
  size(600, 600, P3D);
}

void draw()  {
  background(0);
  noStroke();
  
  if(key=='a'){
     ambientLight(0,0,255);
  }else if(key=='d'){
     directionalLight(0,255,0,0,-1,0); 
  }else if(key=='s'){
     spotLight(255,0,0,300,300,400,0,0,-1,PI/20,5); 
  }else if(key=='p'){
     pointLight(0,255,255,300,300,400);
  }else if(key==' '){
     noLights(); 
  }
  
  translate(width/2, height/2, 0);
  rotateX(map(mouseY,0,600,radians(180),radians(-180)));
  rotateY(map(mouseX,0,600,radians(-180),radians(180)));
  
  sphereDetail(50);
  sphere(100);
}


