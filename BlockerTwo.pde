class BlockerTwo {
  
  int block2X;
  int block2Y;
  int block2Size;
  color white = color(255);
  
  BlockerTwo(int block2X, int block2Y, int block2Size) {
    block2X = (int)(random(width));
    block2Y = (int)(random(height));
    block2Size = (int)(random(30,40));
  }
  
  void update() {
    block2X = (int)(random(width));
    block2Y = (int)(random(height));
    block2Size = (int)(random(30,40));
  }
  
  void display() {
    ellipse(block2X, block2Y, block2Size, block2Size);
    fill(white);
  }
}
