//https://youtu.be/pt3haQlK9x4
int valewup;
int iShowSpeed;
boolean girar;
boolean switchear;
boolean colorRandom;
float angulo1;
float angulo2;
float valorAngulo;
float anguloVelocidad;
color colorin;
String startPause;
String onOff;
String valewin;
PImage obra;

void setup () {
  //() {}
  size(800, 400);
  rectMode(CENTER);
  angulo1 = 0;
  angulo2 = 0;
  valorAngulo= 0.01 ;
  anguloVelocidad = 0;
  switchear= false;
  girar = false;
  colorin = color(250);
  valewup = color (0);
  iShowSpeed= 0;
  colorRandom = false;
  startPause = "START";
  onOff = "CLR on";
  obra= loadImage("obra.jpeg");
}

void draw() {
  //() {}
  background(250);
  println("mouseX:"+mouseX);
  println("mouseY:"+mouseY);

  obraInteractiva();

  botones();

  texto();

  current();

  if (mouseX > 53 && mouseY > 78 && mouseX < 148 && mouseY < 123 || mouseX > 53 && mouseY > 143 && mouseX < 148 && mouseY < 186|| mouseX > 53 && mouseY > 207 && mouseX < 148 && mouseY < 253|| mouseX > 53 && mouseY > 272 && mouseX < 148 && mouseY < 317|| mouseX > 168 && mouseY > 272 && mouseX < 263 && mouseY < 317|| mouseX > 53 && mouseY > 337 && mouseX < 148 && mouseY < 383|| mouseX > 158 && mouseY > 207 && mouseX < 263 && mouseY < 253) {
    cursor(HAND);
  } else if (mouseX>width/2) {
    cursor(CROSS);
  } else {
    cursor(ARROW);
  }
}

void mouseReleased() {
  //() {}
  if (mouseX > 53 && mouseY > 78 && mouseX < 148 && mouseY < 123) {
    girar = !girar;
  }
  if (mouseX > 53 && mouseY > 143 && mouseX < 148 && mouseY < 186) {
    switchear = !switchear;
  }
  if (mouseX > 53 && mouseY > 207 && mouseX < 148 && mouseY < 253) {
    colorRandom = !colorRandom;
  }
  if (mouseX > 158 && mouseY > 207 && mouseX < 263 && mouseY < 253) {
    valewup = color (random(0, 225));
  }
  if ( mouseX > 53 && mouseY > 272 && mouseX < 148 && mouseY < 317) {
    anguloVelocidad += 0.1;
    iShowSpeed+= 1;
  }
  if (mouseX > 168 && mouseY > 272 && mouseX < 263 && mouseY < 317) {
    anguloVelocidad -= 0.1;
    iShowSpeed-= 1;
    if (anguloVelocidad < 0 ) {
      anguloVelocidad = 0;
      iShowSpeed = 0;
    }
  }
  if (mouseX > 53 && mouseY > 337 && mouseX < 148 && mouseY < 383) {
    angulo1 = 0;
    angulo2 = 0;
    girar = false;
    switchear = false;
    colorRandom = false;
    anguloVelocidad= 0;
    colorin = color(250);
    valewup = color (0);
    iShowSpeed= 0;
  }
}
