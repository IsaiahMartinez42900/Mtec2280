//Isaiah Martinez
 
int sunColor = 238;
void setup() 
{
  size(700, 700);
  background (255);
}

void draw() {

  //sun rays
 // for (int i=10; i<width; i=i+50) {
  //  line (0, 0, 500, i);
 // }
  for (int i=1; i<height; i=i+30) {
    line (0, 0, 500, i);
    strokeWeight(0);
    ellipse(0, 0, 90, 90);
}
if (mousePressed) {
  fill(238, 217, 30);
}
if (mousePressed) {
  fill(238, 200, 30);
}
if (mousePressed) {
  fill(238, 187, 30);
}
if (mousePressed) {
  fill(238, 165, 30);

}
}
