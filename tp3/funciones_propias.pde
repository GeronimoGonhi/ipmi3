void obraInteractiva() {
  push();
  translate(width-200, height-200);
  for (int i = 300; i > 5; i -=50) {
    push();
    fill(valewup);
    stroke(valewup);
    rotate(angulo1);
    strokeWeight(20);
    rect(0, 0, i, i);
    pop();
    push();
    fill(colorin);
    rotate(angulo2);
    strokeWeight(0);
    rect(0, 0, i-10, i-10);
    pop();
  }
  pop();
  if (girar == true) {
    angulo1 += valorAngulo+anguloVelocidad;
    angulo2 -= valorAngulo+anguloVelocidad;
    startPause = "PAUSE";
  } else if (girar == false) {
    startPause = "START";
  }
  if (switchear == true) {
    valorAngulo= -0.01 ;
  } else if (switchear == false) {
    valorAngulo= 0.01 ;
  }
  if (colorRandom == true) {
    colorin = color(random(0, 200), random(0, 200), random(0, 250));
    onOff= "CLR off";
  } else if (colorRandom == false) {
    colorin = color(250);
    onOff= "CLR on";
  }
}

void botones() {
  for (int i= 0; i<width/2; i +=50) {
    for (int y= 0; y< height; y +=50) {
      strokeWeight(2);
      fill(175);
      rect(i+25, y+25, 50, 50);
    }
  }
  strokeWeight(0);
  fill(255, 5, 5);
  rect(width/2-1, 0, 2, 800);
  fill(0);
  rect(105, 105, 90, 40);
  rect(105, 170, 90, 40);
  rect(105, 235, 90, 40);
  rect(220, 235, 90, 40);
  rect(105, 300, 90, 40);
  rect(220, 300, 90, 40);
  rect(105, 365, 90, 40);
  fill(100);
  rect(100, 100, 90, 40);
  rect(100, 165, 90, 40);
  rect(100, 230, 90, 40);
  rect(215, 230, 90, 40);
  rect(100, 295, 90, 40);
  rect(215, 295, 90, 40);
  rect(100, 360, 90, 40);
  fill(250,150);
  rect(316, 234, 90, 40);
  rect(316, 296, 100, 40);
  image(obra,201,50,150,150);
}

void texto () {
  textSize(25);
  fill(0);
  text(startPause, 65, 109);
  text("SWITCH", 60, 173);
  text(onOff, 60, 238);
  textSize(20);
  text("VALEW in", 175, 238);
  textSize(15);
  text("SPEED UP", 60, 303);
  text("SLOWDOWN", 175, 303);
  textSize(25);
  text("RESET", 65, 368);
}

void current() {
  textSize(15);
  text("current valeu:", 273, 230);
  text(valewup, 273, 245);
  text("current speed:",273, 295);
  text("x"+round(anguloVelocidad+iShowSpeed), 273, 310);
}
