Population test;
PVector goal  = new PVector(400, 10);


void setup() {
  size(800, 800); 
  frameRate(100);
  test = new Population(1000);
}


void draw() { 
  background(255);

  fill(255, 0, 0);
  ellipse(goal.x, goal.y, 10, 10);

  fill(0, 0, 255);

  rect(0, 300, 600, 10);

  if (test.allDotsDead()) {
    test.calculateFitness();
    test.naturalSelection();
    test.mutateDemBabies();
  } else {
    test.update();
    test.show();
  }
}
