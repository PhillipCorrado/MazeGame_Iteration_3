class BlockerFour {
  
  int block4X;
  int block4Y;
  int block4Size;
  color white = color(255);
  
  BlockerFour(int block4X, int block4Y, int block4Size) {
    block4X = (int)(random(width));
    block4Y = (int)(random(height));
    block4Size = (int)(random(30,40));
  }
  
  void update() {
    block4X = (int)(random(width));
    block4Y = (int)(random(height));
    block4Size = (int)(random(30,40));
  }
  
  void display() {
    ellipse(block4X, block4Y, block4Size, block4Size);
    fill(white);
  }
}
