int f = 10;
int c = 10;

boolean[][][] m;

float t;

void setup() {
  size(500, 500);
  
  t = width / c;
  
  m = new boolean[f][c][6];
  
  for (int i = 0; i < f; i++) {
    for (int j = 0; j < c; j++) {
      for (int k = 0; k < 6; k++) {
        if (random(1) > 0.5) {
          m[i][j][k] = true;
        } else {
          m[i][j][k] = false;
        }
      }
    }
  }
}

void draw() {
  background(255);
  stroke(0);
  
  for (int i = 0; i < f; i++) {
    for (int j = 0; j < c; j++) {
      
      float x = j * t;
      float y = i * t;
      
      if (m[i][j][0]) line(x, y, x+t, y);
     if (m[i][j][1]) line(x+t, y, x+t, y+t);
       if (m[i][j][2]) line(x, y+t, x+t, y+t);
      if (m[i][j][3]) line(x, y, x, y+t);
      
      if (m[i][j][4]) line(x, y, x+t, y+t);
       if (m[i][j][5]) line(x+t, y, x, y+t);
    }
  }
}
