
public class person {
  String name;  
  public String role;
  float xSize;
  float ySize;
  int x, y;
  int lineX,  lineY;
  float angle;
  public PImage pic;
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
    
  }


  void show() {
    pushMatrix();
    translate(x, y);
    scale(xSize, ySize);
    image(pic, xSize, ySize);
    popMatrix();
    
  }
}
