class Exit {
  
  AudioSample success;
  
  int exitX;
  int exitY;
  color white = color(255);
  
  Exit (int exitX, int exitY) {
    success = minim.loadSample("MazeGameSuccess.wav", 512);
    exitX = (int)(random(50, width-50));
    exitY = (int)(random(50, height-50));
  }
  
  void update() {
    exitX = (int)(random(50, width-50));
    exitY = (int)(random(50, height-50));
  }
  
  void display() {
    ellipse(exitX, exitY, 50, 50);
    noFill();
    stroke(white);
    
    if(dist(player.x, player.y, exitX, exitY) <= 10) {
      level.i += 1;
      timer.interval+=10;
      success.trigger();
    }
  }
}
