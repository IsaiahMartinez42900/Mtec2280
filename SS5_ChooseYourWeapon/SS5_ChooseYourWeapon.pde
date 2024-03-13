//Isaiah Martinez, Choosing your weapon, 
String[] weapons = {"pistol", "assault rifle", "sniper", "knife", "sword"}; //initalize a list of weapons
float opacity = 1;
PImage pistol;
PImage assaultrifle;
PImage sniper;
PImage knife;
PImage sword;
int selectWeapon = 0;


void setup () {
 background(255, 255, 255);
 size(700, 800);
 
 weapons[0] = "pistol";
 weapons[1] = "assault rifle";
 weapons[2] = "sniper";
 weapons[3] = "knife";
 weapons[4] = "sword";
 
 pistol = loadImage("Pistol.jpeg");
 assaultrifle = loadImage("Assault Rifle.jpeg");
 sniper = loadImage("Sniper.jpeg");
 knife = loadImage("knife.jpeg");
 sword = loadImage("Sword.jpeg");
 
 textAlign(CENTER);
 textSize(50);
}



void draw() {
  
 fill(200, 200, 200);
 ellipse(100, 600, 70, 70); //head
 line(100, 700, 100, 636); //neck
 line(100, 700, 150, 650); //arm
 line(100, 700, 50, 650); //arm
 line(100, 700, 130, 770); //leg
 line(100, 700, 75, 770); //leg
 
 fill(opacity);
 text("Choose Your Weapon", 350, 350);
 

 
 noFill();
 ellipse(87, 595, 15, 15); //eyes
 ellipse(113, 595, 15, 15); //eyes
 line(85, 620, 115, 620); //mouth

if (selectWeapon == 0) {
  image(pistol, width/4.9, 615, 100, 65);
  //image(assaultrifle, 0, 0, 0, 0);
  //image(sniper, 0, 0, 0, 0);
  //image(knife, 0, 0, 0, 0);
  //image(sword, 0, 0, 0, 0);
} 
if (selectWeapon == 1) {
  image(assaultrifle, width/4.5, 565, 200, 150);
  //image(pistol, 0, 0, 0, 0);
  //image(sniper, 0, 0, 0, 0);
  //image(knife, 0, 0, 0, 0);
  //image(sword, 0, 0, 0, 0);
} 
if (selectWeapon == 2) {
  image(sniper, width/4.5, 615, 100, 65);
  //image(assaultrifle, 0, 0, 0, 0);
  //image(knife, 0, 0, 0, 0);
  //image(sword, 0, 0, 0, 0);
  //image(pistol, 0, 0, 0, 0);
} 
if (selectWeapon == 3) {
  image(knife, width/4.8, 570, 100, 100);
  //image(sniper, 0, 0, 0, 0);
  //image(sword, 0, 0, 0, 0);
  //image(pistol, 0, 0, 0, 0);
  //image(assaultrifle, 0, 0, 0, 0);
} 
if (selectWeapon == 4) {
  image(sword, width/4.7, 470, 200, 200);
  //image(knife, 0, 0, 0, 0);
  //image(sniper, 0, 0, 0, 0);
  //image(assaultrifle, 0, 0, 0, 0);
  //image(pistol, 0, 0, 0, 0);
}
}
  
void mousePressed() {
  
 selectWeapon++;
 if (selectWeapon == weapons.length) {
 selectWeapon = 0;
}
 println("Selected Weapon: " + weapons[selectWeapon]);
 
}
