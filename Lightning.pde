int startX = 0;
int startY = 150;
int endY = 150;
int endX = 0;
int xC = (int)Math.random()*255;
int yC = (int)Math.random()*255;
int zC = (int)Math.random()*255;
int aX = (int)Math.random()*9;
int aY = (int)(Math.random()*18)-9;
void setup()
{
  size(400,400);
  strokeWeight(3);
  background(255);
}
void draw()
{
	stroke(xC,yC,zC);
	while (endX < 300)
	{
		endX = startX + aX;
		endY = startY + aY;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		xC = (int)Math.random()*255;
		yC = (int)Math.random()*255;
		zC = (int)Math.random()*255;
	}
}

void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}
