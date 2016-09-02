int startX = 150;
int endX = 150;
int startY = 0;
int endY = 0;
int xC = (int)(Math.random()*255);
int yC = (int)(Math.random()*255);
int zC = (int)(Math.random()*255);
int aX = (int)(Math.random()*18)-9;
int aY = (int)(Math.random()*9);
int eY = (int)(Math.random()*100)+200;
void setup()
{
  size(300,300);
  noStroke();
  fill(170,170,170);
  rect(0,0,300,200);
  fill(0,255,0);
  rect(0,200,300,150);
}
void draw()
{
	target();
	while(endY <= eY)
	{
		stroke(xC,yC,zC);
		strokeWeight(2);
		endX = startX + aX;
		endY = startY + aY;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		xC = (int)(Math.random()*255);
		yC = (int)(Math.random()*255);
		zC = (int)(Math.random()*255);
		aX = (int)(Math.random()*18)-9;
		aY = (int)(Math.random()*9);	
		eY = (int)(Math.random()*100)+200;
	}
	cloud3();
	cloud1();
	cloud2();
	
}

void mousePressed()
{
	noStroke();
 	fill(170,170,170);
  	rect(0,0,300,200);
  	fill(0,255,0);
  	rect(0,200,300,150);
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
}

void cloud1()
{
	noStroke();
	fill(70);
	ellipse(150,30,100,130);
	ellipse(100,50,100,80);
	ellipse(200,50,70,70);
	ellipse(290,60,50,50);
}
void cloud2()
{
	noStroke();
	fill(60);
	ellipse(250,30,100,130);
	ellipse(200,50,100,80);
	ellipse(300,50,70,70);
	ellipse(390,60,50,50);
}
void cloud3()
{
	noStroke();
	fill(80);
	ellipse(50,30,100,130);
	ellipse(100,50,100,80);
	ellipse(0,50,70,70);
	ellipse(-90,60,50,50);
}

void target()
{
	stroke(255,0,0);
	strokeWeight(7);
	noFill();
	ellipse(150,250,100,40);
	ellipse(150,250,60,24);
	ellipse(150,250,15,6);
}
