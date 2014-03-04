// a couple names generator

PFont font;
boolean switchName = false;
String currentName = generateName();


String generateName() {

  String[] group_1 = {
    "Luna", "Davide", "Elena", "Manuel", "Thomas",
  };
  String[] plus = {
    "+",
  };
  String[] group_2 = {
    "Elisa", "Sofia", "Laura", "x", "x",
  };

  int gr1 = (int)random(0, group_1.length);
  int pls = (int)random(0, plus.length);
  int gr2 = (int)random(0, group_2.length);
  return group_1[gr1] + plus[pls] + group_2[gr2];
}



void setup() {
  size(595, 842);
}

void draw() {
  background(30, 30, 30);
  font = loadFont("ACaslonPro-Italic-48.vlw");
  textFont(font);
  fill(255, 120, 0);
  if (switchName) {
    currentName = generateName();
    switchName = false;
  }
  text(currentName, centerTextHorizontal(currentName, width), height/2);
}

void keyPressed() {
  if (key == ' ') { // press space for switching a new couple of names
    switchName = true;
  }
}

int centerTextHorizontal(String words, int rectWidth) {
  return (int)(((float)(rectWidth - textWidth(words)))/2);
}

