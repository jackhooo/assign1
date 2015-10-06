/* please implement your assign1 code in this file. */
PImage p0;
PImage p1;
PImage e;
PImage f;
PImage hp;
PImage t;
int x;
int g;
int y;
int r;
int q;
int w;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
    background(255);
  p0 = loadImage("img/bg1.png");
  p1 = loadImage("img/bg2.png");
  e = loadImage("img/enemy.png");
  f = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  t = loadImage("img/treasure.png");
  x = 0;
  g = -640;
  y = 0;
  r = floor(random(200));
  q = floor(random(600));
  w = floor(random(400));
}

void draw() {
  // your code
  background(255);
  
  x = x+1;
  if(x==640)
  x=-640;
  
  g = g+1;
  if(g==640)
  g=-640;
 
  image(p0, x, 0);
  image(p1, g , 0);
  
  y=(y+2)%642;
  image(e,y,40);
  
  image(f,580,240);
    
  image(t,q,w);
   
  fill(255,48,48);
  rect(10, 10, r, 20);
  image(hp,5,5);
}
