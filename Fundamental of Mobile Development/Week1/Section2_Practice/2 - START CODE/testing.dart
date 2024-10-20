class Point {
  int x;
  int y;

  Point(this.x, this.y);

  @override
  String toString() {
    return "x= $x - y= $y";
  }

  void translate(int dx, int dy) {
    x += dx;
    y += dy;
  }
}

main() {
  Point p1 = Point(1, 2);
  print(p1);

  print(p1);
}