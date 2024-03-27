PImage[] weaponImages = new PImage[5];
int weaponChoice = 0;
float opacity = 1;
PImage monster;
int selectWeapon = 0;
String level = "pregame"; //storing our levels as Strings//starts at the "pregame" scene
boolean weaponLocked = false;
int currentTime = 0;
//int restartTime = 0;

void setup() {
  size(1100, 800);
 
 weaponImages[0] = loadImage("Pistol.jpeg");
 weaponImages[1] = loadImage("Assault Rifle.jpeg");
 weaponImages[2] = loadImage("Sniper.jpeg");
 weaponImages[3] = loadImage("knife.jpeg");
 weaponImages[4] = loadImage("Sword.jpeg");
 monster = loadImage("enemyStickmonster.jpg");
 
 textAlign(CENTER);
 textSize(50);  
}

void draw() 
{
   
  if (level == "pregame") 
  {
    pregame();
  } 
  else if (level == "game") 
  { weaponLocked = true;
  currentTime = millis();
    game();
  } 
  else if (level == "game over") 
  { weaponLocked = false;
    gameover();
  }
  
  println(level);
}
void mousePressed() {
  if (level == "pregame") {
    level = "game";
  } else if (level == "game") {
    level = "game over";
  } else if (level =="game over") {
    currentTime = 0;
    println("timer reset to: " + currentTime);
    level = "pregame";
    
  }
}

void pregame() 
{
 background(255);
 fill(200, 200, 200);
 
 //player
 ellipse(100, 600, 70, 70); //head
 line(100, 700, 100, 636); //neck
 line(100, 700, 150, 650); //arm
 line(100, 700, 50, 650); //arm
 line(100, 700, 130, 770); //leg
 line(100, 700, 75, 770); //leg
 noFill();
 ellipse(87, 595, 15, 15); //eyes
 ellipse(113, 595, 15, 15); //eyes
 line(85, 620, 115, 620); //mouth
 fill(opacity);
 text("CHOOSE YOUR WEAPON", 500, 350);
 text("(From 1-5)", 500, 400);
 
  if (selectWeapon == 0 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 595, 100, 65);
  
} 
if (selectWeapon == 1 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 565, 200, 150);
   
} 
if (selectWeapon == 2 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 595, 180, 80);
  
} 
if (selectWeapon == 3 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 570, 100, 100);
   
} 
if (selectWeapon == 4 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 470, 200, 200);
  
}

    println("Selected Weapon: " + weaponImages[selectWeapon]);
}




void game() 
{
  background(255);
 
  
 //player
  fill(200, 200, 200);
 ellipse(100, 600, 70, 70); //head
 line(100, 700, 100, 636); //neck
 line(100, 700, 150, 650); //arm
 line(100, 700, 50, 650); //arm
 line(100, 700, 130, 770); //leg
 line(100, 700, 75, 770); //leg
 fill(opacity);
 text("HURRY UP AND KILL HIM!", 500, 350);
 text("(Click to attack)", 500, 400);
 noFill();
 ellipse(87, 595, 15, 15); //eyes
 ellipse(113, 595, 15, 15); //eyes
 line(85, 620, 115, 620); //mouth
 image(monster, 800, 440, 350, 350);
 
 /*int restartTime = millis() - currentTime;
 
 if (restartTime > 12000) {
   text("I lose", 500, 350);
 } else {
   text("KILL HIM!", 500, 350);*/
 
 
 if (selectWeapon == 0 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 595, 100, 65);
  
} 
if (selectWeapon == 1 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 565, 200, 150);
  
} 
if (selectWeapon == 2 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 595, 180, 80);
   
} 
if (selectWeapon == 3 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 570, 100, 100);
  
} 
if (selectWeapon == 4 && selectWeapon < weaponImages.length) {
  image(weaponImages[selectWeapon], 150, 470, 200, 200);
   
}
  println(selectWeapon);
 
}

void gameover() {
  background(155, 0, 0);
  
  
  if (millis() > 18000) {
    text("(Click to play again)", 500, 400);
   text("YOU LOSE!!!", 500, 350); 
   //currentTime = 0;
 } else  {
   background(0, 255, 0);
     text("YOU WIN!!!", 500, 350);
     text("(Click to play again)", 500, 400);
 }
}
void keyPressed() {
  if (!weaponLocked) {
    
  if (key >= '1' && key <= '5') {
    selectWeapon = key - '1'; 
  }
 
}
}
