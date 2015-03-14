
Map map = new Map(10, 10);

void setup()
{
  size(800,800);
}

void draw()
{
  map.generate();
  map.display();
}
