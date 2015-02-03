public void setup()
{
	size(500,500);
	stroke(255);
	noFill();
}

public void draw()
{
	background(0);
	myFractal(250,250,20);
}
public void myFractal(int x, int y, int siz)
{
	ellipse(x, y, siz, siz);
	if(siz < 640)
	{
		stroke(255);
		strokeWeight(0);
		myFractal(x-siz/2,y,siz*2);
		myFractal(x+siz/2,y,siz*2);
		myFractal(x,y-siz/2,siz*2);
		myFractal(x, y+siz/2, siz*2);
	}
}
