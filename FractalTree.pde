private double fractionLength = .8; 
private int smallestBranch = 8; 
private double branchAngle = .2;  
public void setup() 
{   
  size(500,350);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(222,111,22);   
  line(250,350,250,250);   
  drawBranches(250,250,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchLength;
  double angle2 = angle - branchLength;
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(branchLength>smallestBranch)
  {
    drawBranches(endX1,endY1, branchLength, angle1);
    drawBranches(endX2,endY2, branchLength, angle2);
  }
}
