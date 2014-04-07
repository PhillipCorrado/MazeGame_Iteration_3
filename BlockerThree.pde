class BlockerThree {
  
  int block3X;
  int block3Y;
  int block3Size;
  color white = color(255);
  
  BlockerThree(int block3X, int block3Y, int block3Size) {
    block3X = (int)(random(width));
    block3Y = (int)(random(height));
    block3Size = (int)(random(30,40));
  }
  
  void update() {
    block3X = (int)(random(width));
    block3Y = (int)(random(height));
    block3Size = (int)(random(30,40));
  }
  
  void display() {
    ellipse(block3X, block3Y, block3Size, block3Size);
    fill(white);
  }
}
