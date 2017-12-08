class Kvadrat {
  float x, y, s;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }
  
  void right(float _s) {
    this.x+=_s;
  }
}

class ColorKvadrat extends Kvadrat {
 color a;
  ColorKvadrat(float _x, float _y, float _s, color c){
    super(_x,_y,_s);
    this.a = c;
 }
  void draw() {
    rect(this.x,this.y,this.s,this.s);
    fill(this.a);
 }
}

 ColorKvadrat[] k_array;

void setup()
{
  size(600,600);
  k_array = new  ColorKvadrat[10];
  for(int i=0; i<10; i++){
    k_array[i] = new  ColorKvadrat(random(width), random(height), 100.0,int(random(1,255)));
  }
}

void draw()
{
  background(0);
  for(int i=0; i<10; i++){
     k_array[i].draw();
     k_array[i].right(random(5));
  }
}