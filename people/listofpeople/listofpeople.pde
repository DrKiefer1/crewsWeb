/* @pjs preload="testimage.png, phil.png", mitch.jpg; */
person[] persons;
Boolean sizeUp = true;
int a = 0;
int b = 0;
int fillcolor = 255;
Boolean createBackground = false;
Boolean lineTrue = true;
String role = " ";
int pos = 0;
void setup() {
  persons =  new person[10];

  size(800, 800);
  createPersons();
}
void draw() {
  background(fillcolor);
  
  //createLines();
  // if(createBackground == true) {
  //  fill(fillcolor);

  //} else {
  createBackgroundColor(role);
  if(lineTrue == true) {
  createLines();
  
  }
  showFace();
  //}
}

void createLines() {
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
  line(400, 163, 325, 200); //phil to erin
  line(400, 163, 475, 200); //phil to mitch
  line(475, 268, 550, 300); //mitch to sam
  line(475, 268, 400, 300); //mitch to alexis
  line(325, 200, 400, 300); //erin to alexis
  line(325, 225, 200, 225); //erin to david
  line(337.5, 200, 200, 300); //erin to wendy
  line(325, 250, 200, 400); //erin to elizabeth
  line(325, 250, 275, 400); //erin to alyssa
  line(325, 250, 100, 300); //erin to alex
}

void mousePressed() {
  println (mouseX +"," + mouseY);
  for (int i = 0; i < persons.length; i++) {
    if (sizeUp == true) {
      if (dist(persons[i].x, persons[i].y, mouseX, mouseY) < 50) {
        a = persons[i].x;
        b = persons[i].y;
        fillcolor = 100;
        background(fillcolor);

        persons[i].x = 150;
        persons[i].y = 0;
        persons[i].xSize = 1; 
        persons[i].ySize = 1;
        createBackground = true;
        role = persons[i].role;
        
        lineTrue = false;
        pos = i;
        
      }
    } 
    //setu/p();
  }  
  
}
void mouseClicked() {
  
}
void keyPressed() {
  
  
  fillcolor = 255;
  //createBackground = false;
  
 
  createPersons();
  lineTrue = true;
  //if (keyCode == ' ') {
  //  // sizeUp = false;
  //  clear();
  //  createPersons();
  //  redraw();
  //}
}
void createPersons() {
  persons[0] = new person("name", "Phil Crews Ph.D. Principal Investigator University of California, Santa Cruz Department of Chemistry and Biochemistry ", 0.1, 0.1, 375, 100, 10, loadImage("phil.png")); //phil
  persons[1] = new person("name", "role", 0.1, 0.1, 375 - 75, 200, 10, loadImage("testimage.png")); //erin
  persons[2] = new person("Mitch Crews", "Mitch Crews\n\nResearch Scientist", 0.1, 0.1, 375 + 75, 200, 10, loadImage("mitch.jpg")); //mitch
  persons[3] = new person("David Coppage", "David Coppage\n\nPostbac Scientist", 0.1, 0.1, 375 - 225, 200, 10, loadImage("david.jpg")); //david
  persons[4] = new person("name", "role", 0.1, 0.1, 375, 300, 10, loadImage("testimage.png")); //alexis
  persons[5] = new person("name", "role", 0.1, 0.1, 375 - 200, 300, 10, loadImage("testimage.png")); //wendy
  persons[6] = new person("name", "role", 0.1, 0.1, 375 - 200, 400, 10, loadImage("testimage.png")); //elizabeth
  persons[7] = new person("name", "role", 0.1, 0.1, 375 - 125, 400, 10, loadImage("testimage.png")); //alyssa
  persons[8] = new person("name", "role", 0.1, 0.1, 375 - 300, 300, 10, loadImage("testimage.png")); //alex
  persons[9] = new person("name", "role", 0.1, 0.1, 375 + 150, 300, 10, loadImage("testimage.png")); //sam
}

void createBackgroundColor(String role) {
  if (createBackground == true) {
    pushMatrix();
    
    textSize(12);
    fill(255);
    text(role, width/2.5 + 50, 700, 200, 300);
    popMatrix();
  }
  // background(fillcolor);
}
void showFace() {
  persons[pos].show();
}
