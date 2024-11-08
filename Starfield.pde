Star [] bob = new Star[300];
void setup(){
 size(600, 600);
 for(int i = 0; i < bob.length; i ++){
   bob[i] = new Star();
 }
  for(int t = 0; t < bob.length - 149; t ++){
  bob[t] = new Boom();
 }
}

void draw(){
 background(0);
 for(int i = 0; i < bob.length; i ++){
   bob[i].expolsion();
   bob[i].show();
 if(bob[i].myX >= 600 || bob[i].myX <= 0){
   bob[i].myX = 300;
   bob[i].myY = 300;
 }
 if(bob[i].myY >= 600 || bob[i].myY <= 0){
   bob[i].myX = 300;
   bob[i].myY = 300;
 }
 }
}

class Boom extends Star{
  Boom(){
   myColor = color(80, 171, 175);
   myX = width / 2;
   myY = height / 2;
   myAngle = Math.random() * 20.99999 - 10 * Math.PI;
   mySpeed = Math.random() * 30 - 7;
  }
  void expolsion(){
   myX = mySpeed + myX + myAngle;
   myY = myY + myAngle;    
  }
  void show(){
   fill(myColor);
   rect((float)myX, (float)myY, 20, 20);
  }
}

class Star{
  double myX, myY, myAngle, mySpeed;
  int myColor, myShape;
  Star(){
   myColor = color(214, 71, 195);
   myX = width / 2;
   myY = height / 2;
   myAngle = Math.random() * 43.99999 - 3.9999 * Math.PI;
   mySpeed = Math.random() * 99.999999 - 47.999999;
  }
  void expolsion(){
   myX = mySpeed + myX + myAngle;
   myY = myY + myAngle;
  }
  void show(){
   fill(myColor);
   ellipse((float)myX, (float)myY, 20, 20);
  }
}
