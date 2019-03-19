public class person {
  String name;  
  public String role;
  float xSize;
  float ySize;
  int x, y;
  int lineX,  lineY;
  float angle;
  PImage pic;
  public Boolean isLine;
  public int numOfLines;
  
  person(String name, String role, float xSize, float ySize, int x, int y, float angle, PImage pic) {
    this.name = name;
    this.role = role;
    this.xSize = xSize;
    this.ySize = ySize;
    this.x = x;
    this.y = y;
    this.angle = angle;
    this.pic = pic;
    this.lineX = lineX;
    this.lineY = lineY;
  }


  void show() {
    pushMatrix();
    translate(x, y);
    scale(xSize, ySize);
    image(pic, xSize, ySize);
    popMatrix();
    //pushMatrix();
    //translate(x,y);
    //if (isLine == true) {
    //  for (int i = 0; i < numOfLines; i++) {
    //    line(x,y, lineX, lineY);
    //  }
      
    //}
    //popMatrix();
  }
}
