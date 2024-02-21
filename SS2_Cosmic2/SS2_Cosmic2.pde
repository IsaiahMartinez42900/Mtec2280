//int mouseX = 300;
//int mouseY = 300;
float r = 50;
float g = 255;
float b = 150;

void setup () {
  background(0, 0, b);
  size(1000, 1000);
}
void draw () {
  
  //line(mouseX, mouseY, pmouseX, pmouseY);
  fill(r, g, b, 1);
  ellipse(400, 450, pmouseX, pmouseY);

if (mouseX > 400) {
strokeWeight(1);
fill(255, 250, 0, 100);
ellipse(400, 300, 100, 100);
}

else if (mouseY < 400) {
  fill(0, 255, 50, 100);
   ellipse(400, 400, 100, 100);
 }
 else if (mouseY < 400) {
   fill(0, 204, 102, 100);
   ellipse(400, 500, 100, 100);
}
else if (mouseY < 400) {
   fill(200, 0, 200, 100);
   ellipse(400, 600, 100, 100);
}
}
void mousePressed () {
   
  r = random (150);
  g = random (100);
  b = random (200);
}
