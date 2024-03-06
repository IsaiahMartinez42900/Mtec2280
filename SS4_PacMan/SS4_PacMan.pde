PImage pacman;

float opacity = 0;
int pacmanX = 0;
int currentTime = 0;
int timer = 150;
int timeTracker = 0;


void setup() 
{
  size (600, 700);
  background (200);
  
  imageMode(CENTER); 
  pacman = loadImage("PacOpen.jpg"); //mouth open
  textAlign(CENTER);
  textSize(50);
 
}  

void draw() 
{
  background(248);  

fill(255, 255, 0);
ellipse(150, 200, 30, 30);
ellipse(300, 200, 30, 30);
ellipse(450, 200, 30, 30);
fill(opacity);
text("Delicious!!!", 300, 50);


currentTime = millis();

image(pacman, pacmanX, 200, 100, 100); //mouth open image

if (currentTime - timeTracker > timer)
{
  if (pacmanX > width)
  {
    pacmanX = 0;
  }
  else
  {
    pacmanX += 10;
  }
  timeTracker = currentTime;
}
//tryna figure out food disapears when eaten
}
