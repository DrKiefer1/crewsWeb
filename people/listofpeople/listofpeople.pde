/* @pjs preload="testimage.png"; */
person[] persons;
Boolean sizeUp = true;
int a = 0;
int b = 0;
void setup() {
  persons =  new person[10];
  
  size(800, 800);
  createPersons();
}
void draw() {
  background(255);
  persons[0].show();
  persons[1].show();
  persons[2].show();
  persons[3].show();
  persons[4].show();
  persons[5].show();
  persons[6].show();
  persons[7].show();
  persons[8].show();
  persons[9].show();
  createLines();
}

void createLines() {

  line(400, 152, 325, 200); //phil to erin
  line(400, 152, 475, 200); //phil to mitch
  line(475, 200, 550, 300); //mitch to sam
  line(475, 200, 400, 300); //mitch to alexis
  line(325, 200, 400, 300); //erin to alexis
  line(325, 225, 175, 225); //erin to david
  line(337.5, 200, 200, 300); //erin to wendy
  line(325, 250, 200, 400); //erin to elizabeth
  line(325, 250, 275, 400); //erin to alyssa
  line(325, 250, 100, 300); //erin to alex
}

void mousePressed() {
  for (int i = 0; i < persons.length; i++) {
    if (sizeUp == true) {
      if (dist(persons[i].x, persons[i].y, mouseX, mouseY) < 50) {
        a = persons[i].x;
        b = persons[i].y;
        persons[i].x = 300;
        persons[i].y = 200;
        persons[i].xSize = 0.5; 
        persons[i].ySize = 0.5;
      }
    }
  }
}
void keyPressed() {
  if (keyCode == ' ') {
    // sizeUp = false;
    clear();
    createPersons();
  }
}
void createPersons() {
  persons[0] = new person("name", "roll", 0.1, 0.1, 375, 100, 10, loadImage("testimage.png")); //phil
  persons[1] = new person("name", "roll", 0.1, 0.1, 375 - 75, 200, 10, loadImage("testimage.png")); //erin
  persons[2] = new person("name", "roll", 0.1, 0.1, 375 + 75, 200, 10, loadImage("testimage.png")); //mitch
  persons[3] = new person("name", "roll", 0.1, 0.1, 375 - 225, 200, 10, loadImage("testimage.png")); //david
  persons[4] = new person("name", "roll", 0.1, 0.1, 375, 300, 10, loadImage("testimage.png")); //alexis
  persons[5] = new person("name", "roll", 0.1, 0.1, 375 - 200, 300, 10, loadImage("testimage.png")); //wendy
  persons[6] = new person("name", "roll", 0.1, 0.1, 375 - 200, 400, 10, loadImage("testimage.png")); //elizabeth
  persons[7] = new person("name", "roll", 0.1, 0.1, 375 - 125, 400, 10, loadImage("testimage.png")); //alyssa
  persons[8] = new person("name", "roll", 0.1, 0.1, 375 - 300, 300, 10, loadImage("testimage.png")); //alex
  persons[9] = new person("name", "roll", 0.1, 0.1, 375 + 150, 300, 10, loadImage("testimage.png")); //sam
}
