import 'dart:io';

void main() {
  print("Enter Square Size that you want to draw,please: ");
  int size = int.parse(stdin.readLineSync()!);
  drawSquare(size);
  //drawSquare(4);
}

void drawSquare(int squareSize) {
  for (int k = 0; k < squareSize + 1; k++) {
    String line = "";
    for (int i = 0; i < squareSize; i++) {
      line += "--- ";
    }
    print(line);

    if (k != squareSize) {
      String line2 = "";
      for (int i = 0; i < squareSize + 1; i++) {
        line2 += "/  ";
      }
      print(line2);
    }
  }
}
