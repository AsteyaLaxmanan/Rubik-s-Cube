class Move{
  float angle = 0; //x = left and right, y = up and down, z = front and back
  int x = 0; 
  int y = 0;
  int z = 0;
  int dir;
  boolean animating = false;
  boolean finished = false;
  Move(int x, int y, int z, int dir) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.dir = dir;
  }
void start() {
  animating = true;
  
  
  
}
  boolean finished() {
    return finished;
  }
 void update() {
   if (animating) {
   angle += dir*0.1;
   if (angle>HALF_PI) {
     angle = 0;
     animating = false;
     //finished = true;
     finished();
     turnZ(z,dir);
     }
   }
 }



}
