class BlockerOne {
  
  int block1X;
  int block1Y;
  int block1Size;
  color white = color(255);
  
  BlockerOne(int block1X, int block1Y, int block1Size) {
    block1X = (int)(random(width));
    block1Y = (int)(random(height));
    block1Size = (int)(random(30,40));
  }
  
  void update() {
    block1X = (int)(random(width));
    block1Y = (int)(random(height));
    block1Size = (int)(random(30,40));
  }
  
  void display() {
    ellipse(block1X, block1Y, block1Size, block1Size);
    fill(white);
  }
}
