int startX = 0;
int endX = 10;
int startY = 150;
int endY = 160;
void setup()
{
  size(300,300);
  strokeWeight(3);
  background(255);
}
void draw()
{
	stroke(0,255,0);
	while(endX < 300)
	{
		line(startX,startY,endX,endY);
		endX = startX + 9;
		endY = startY + 9;
	}
}

void mousePressed()
{
	draw();
}

