int x=0,y=0,vx=2,vy=3;
void setup(){
  size(300,300);
}  
void draw(){
  ///background(#7DF7B7);
  fill(#F7C27D);
  ellipse(x,y,30,30);
  x+=vx;
  y+=vy;
  if(x<0 || x>300) vx = -vx;
  if(y<0 || y>300) vy = -vy;
}
//rect(10,10,30,30);
