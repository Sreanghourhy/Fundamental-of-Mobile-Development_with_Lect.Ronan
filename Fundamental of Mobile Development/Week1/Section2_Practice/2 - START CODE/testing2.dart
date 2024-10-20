class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() {
    return "x= $x - y= $y";
  }

  Point translate(int dx, int dy) {
    // x += dx;
    // y += dy;
    return Point(this.x + dx, this.y + dy);
  }
}

main() {
  Point p1 = Point(1, 2);
  print(p1);
  
  Point p2 = p1.translate(2, 3);
  print(p2);
}




/*
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() {
    return "x= $x - y= $y";
  }

  Point translate(int dx, int dy) {
    return Point(this.x + dx, this.y + dy);
  }
}

class Shape {
  Point leftBottom;
  int width;
  int height;
  String? backgroundColor;

  // Constructor with named parameters
  Shape({
    required this.leftBottom,
    required this.width,
    required this.height,
    this.backgroundColor,
  });

  // Getter to calculate rightTop Point
  Point get rightTop {
    return leftBottom.translate(width, height);
  }

  // Method to display information about the shape
  void display() {
    print("Left-Bottom Point: $leftBottom");
    print("Width: $width, Height: $height");
    if (backgroundColor != null) {
      print("Background Color: $backgroundColor");
    }
    print("Right-Top Point: $rightTop");
  }
}

void main() {
  // Test the Point class
  Point p1 = Point(1, 2);
  print(p1);
  
  Point p2 = p1.translate(2, 3);
  print(p2);

  // Test the Shape class
  Shape rectangle = Shape(
    leftBottom: Point(0, 0),
    width: 10,
    height: 5,
    backgroundColor: "blue",
  );
  
  rectangle.display();
}

*/