class TestLevel {
  
  PGraphics pg;
  AudioSample collision;
  
  BlockerOne[] block1;
  BlockerTwo[] block2;
  BlockerThree[] block3;
  BlockerFour[] block4;
  Exit[] exit;
  
  int count;
  int i;
  int j;
  color green;
  color blue;
  color red;
  color orange;
  
  TestLevel() {
    i = 0;
    block1 = new BlockerOne[255];
    for(int j=0; j < 255; j++) {
      block1[j] = new BlockerOne((int)(random(width)), (int)(random(height)), (int)(random(30,40)));
    }
    block1[i].update();
    block2 = new BlockerTwo[255];
    for(int j=0; j < 255; j++) {
      block2[j] = new BlockerTwo((int)(random(width)), (int)(random(height)), (int)(random(50,70)));
    }
    block2[i].update();
    block3 = new BlockerThree[255];
    for(int j=0; j < 255; j++) {
      block3[j] = new BlockerThree((int)(random(width)), (int)(random(height)), (int)(random(20,30)));
    }
    block3[i].update();
    block4 = new BlockerFour[255];
    for(int j=0; j < 255; j++) {
      block4[i] = new BlockerFour((int)(random(width)), (int)(random(height)), (int)(random(40,60)));
    }
    block4[i].update();
    exit = new Exit[255];
    for(int j=0; j < 255; j++) {
      exit[j] = new Exit((int)(random(50, width-50)), (int)(random(50, height-50)));
    }
    exit[i].update();
    green = color(0, 255, 0);
    blue = color(0, 0, 255);
    red = color(255, 0, 0);
    orange = color(255, 102, 0);
    ellipseMode(CENTER);
    strokeWeight(5);
  }
  
    void levelCollision() {
    if(dist(player.x, player.y, block1[i].block1X, block1[i].block1Y) < (block1[i].block1Size/2 + player.size/2) 
        || dist(player.x, player.y, block2[j].block2X, block2[j].block2Y) < (block2[j].block2Size/2 + player.size/2)
        || dist(player.x, player.y, block3[j].block3X, block3[j].block3Y) < (block3[j].block3Size/2 + player.size/2)
        || dist(player.x, player.y, block4[j].block4X, block4[j].block4Y) < (block4[j].block4Size/2 + player.size/2)) {
      player.speedX *= -2;
      player.speedY *= -2;
      timer.interval--;
    }
  }
  
  void levelOne() {
    block1[i].display();
    block2[i].display();
    exit[i].display();
  }
  
  void levelTwo() {
    block1[i].display();
    block2[i].display();
    exit[i].display();
  }
  
  void display() {
    if(i == 0) {
      background(orange);
      levelOne();
    }
    if(i == 1) {
      background(green);
      levelTwo();
    }
  }
}
