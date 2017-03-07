   PImage img;
float x;
float y;
  void setup(){
  size(900, 900);
  background(100);
    img = loadImage("mouse.png");
}
void draw(){
  //プロットの数
  int point = 16;
    background(100);
 
   //image(img, mouseX, mouseY);

 PVector mouse = new PVector((mouseX - width / 2),(mouseY - width / 2));
     translate(width / 2, height / 2);

  
 //image(img, mouse.x,mouse.y);
    for(int i=0;i<point;i++){
       //逆正接でシータを求める。座標を揃えるため90から引く
       float degree = ((float)360/point*i)-degrees(atan2(mouse.x, mouse.y));
       //距離の公式
       float r = sqrt(sq(mouse.x)+sq(mouse.y));
       //極座標から直交座標
       float x = r*cos(radians(degree));
       float y = r*sin(radians(degree));
       if(sqrt(point)!=i)
         image(img,x,y);
  }
}