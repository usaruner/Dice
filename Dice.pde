int c = 10; // size
int h = 72; // controls # rows
int w = 78; // controls # columns
float a = c*.7;// .7 of mid point
float b = c*1.3;// 1.3 of mid point
float d = c*.2;// size of dot   d1 = false;
int numdice = (int)((h/2)+1)*((w/2)+1);// numbers of dices
int sum = 0;
void setup()
{
  background(255);
  size(800,800);
  
}
void draw()
{
  background(255);
 for (int f = 0; f <= c*h; f = f + c*2){
 for (int i = 0; i <= c*w; i = i + c*2){
 Die a = new Die(i,f);
 a.show();
  a.roll();
}
}
   fill(0);
   textSize(50);
  text( "Sum :"+ sum , 20, 790);
  text( "Dices:"+ numdice , 500, 790);

}
void mousePressed()
{

  redraw();
    sum = 0;
}
class Die //models one single dice cube
{
  int x1 , y1 , r1;
  Die(int x, int y)
  {
	 x1 = x;
	 y1 = y;
	 r1 = (int)((Math.random()*6) + 1);
         sum = sum + r1;
	 
  }		
  void roll()
  {
   
      
      noLoop();
      
  }
  void show()
  {
      
     print (r1);
     
     stroke(255,255,255);
     fill(0,0,0);
   rect(x1,y1,c*2,c*2,c*.4);
   
   if( r1 == 1 ){ 
    fill(255,255,225);
    noStroke();
    ellipse(x1+c,y1+c,d,d);

    } else if (r1 == 2){
     fill(255,255,225);
    ellipse(x1+b,y1+c,d,d);
    ellipse(x1+a,y1+c,d,d);

    } if( r1 == 3 ){ 
    fill(255,255,225);
    ellipse(x1+b,y1+c,d,d);
    ellipse(x1+c,y1+c,d,d);
    ellipse(x1+a,y1+c,d,d);

    } else if (r1 == 4){
    fill(255,255,225);
    ellipse(x1+a,y1+b,d,d);
    ellipse(x1+b,y1+a,d,d);
    ellipse(x1+a,y1+a,d,d);
    ellipse(x1+b,y1+b,d,d);


    } if( r1 == 5 ){ 
    fill(255,255,225);
    ellipse(x1+a,y1+b,d,d);
    ellipse(x1+b,y1+a,d,d);
    ellipse(x1+a,y1+a,d,d);
    ellipse(x1+b,y1+b,d,d);
    ellipse(x1+c,y1+c,d,d);

 
    } else if (r1 == 6){
    fill(255,255,225);
    ellipse(x1+a,y1+b,d,d);
    ellipse(x1+a,y1+a,d,d);
    ellipse(x1+a,y1+c,d,d);
    ellipse(x1+b,y1+a,d,d);
    ellipse(x1+b,y1+c,d,d);
    ellipse(x1+b,y1+b,d,d);
         


    }
    


   
  }
}
