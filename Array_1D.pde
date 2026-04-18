int n = 20;
float[] datos;

float w;

void setup() {
  size(600, 400);
  
  datos = new float[n];
  w = width / n;
  
  for (int i = 0; i < n; i++) {
    datos[i] = 100; // valor cualquiera
  }
}

void draw() {
  background(50);
  
  // detectar barra con el mouse
  int cual = int(mouseX / w);
  
  if (cual >= 0 && cual < n) {
    datos[cual] = height - mouseY;
    
    // limitar medio básico
    if (datos[cual] < 0) datos[cual] = 0;
    if (datos[cual] > height) datos[cual] = height;
  }
  
  // dibujar
  for (int i = 0; i < n; i++) {
    fill(150, 200, 255);
    rect(i * w, height - datos[i], w - 1, datos[i]);
  }
}
