int x=0;
int y=0;
int a=0;
int b=0;
int c=0;
int g =0;
int e=0;

void setup(){
  
  size(500,500);
  fill (0,0,0);
  textSize(50);
  text ("fill it in!", 50,250);
}

void draw(){
 
  if(x<1000 && y<1000){
  fill(random(50)+a,random(50)+b,random(50)+c);
  //uncomment for adventure fill(random(255),random(255),random(255));
  
  a+=random(5);
  b+=random(5);
  c+=random(5);
  strokeWeight (0);
  if (a >=255 ||b>=255 ||c>=255){
    a=0;
    b=0;
    c=0;
  }
  
  ellipse (pmouseX, pmouseY, random(40) + x,random(40)+y);
  color c = get(int(random(500)),int(random(500)));
  
 
  }
 else {  
 fill(0,0,0);
  textSize(50);
  text ("ultimate!", 50,250);
  fill(random(255),random(255),random(255));
   ellipse (pmouseX, pmouseY, random(40) - g,random(40)-e);
    fill(0,0,0);
  textSize(50);
  text ("ultimate!", 50,250);
 } 
  
}
void mouseClicked(){
  x+=10;
  y+=10;
  g+=1;
  e+=1;
}
