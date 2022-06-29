void setup(){
  size(500,500);
} 
int N=0;//N=棋子，一開始有0個棋子
int []x = new int[100];
int []y = new int[100];
void draw(){
  background(#7DF7B7);
  for(int i=0; i<=10; i++){///畫棋盤
    line(50*i, 0,50*i, 500);
    line(0,50*i,500,50*i);
  }
  for(int i=0; i<N; i++){
    ellipse(x[i],y[i],45,45);
  }
  ellipse(mouseX,mouseY,45,45);///手上的棋子
}
void mousePressed(){
  x[N] = mouseX; y[N] = mouseY;//舊的N
  N++;//新的N
  //這兩行不可以交換，
  //因為上一行執行完，下面再更新新的N++
  //程式就不會壞掉
}
