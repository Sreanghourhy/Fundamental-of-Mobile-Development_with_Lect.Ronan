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
  class shape{
    Point leftBottom;
    int width;
    int height;
    String? backgroundColor;
    
    shape({
    required this.leftBottom,
    required this.width,
    required this.height,
    this.backgroundColor,
  }
);

Point get rightTop{
  return leftBottom.translate(width, height);
}
void display(){
    print("Left-Bottom Point: $leftBottom");
    print("Width: $width, Height: $height");
    if(backgroundColor != null){
      print("Background Color: $backgroundColor");
    }
      print('right-Top Point: $rightTop');
  }
}


main() {
  Point p1 = Point(1, 2);
  print(p1);
  
  Point p2 = p1.translate(2, 3);
  print(p2);
  
  shape rectangle = shape(
    leftBottom: Point(0, 4), 
    width: 10, 
    height: 50, 
    backgroundColor: 'yellow'
    );
  rectangle.display();
}


/*
class Point {
  final double _x;
  final double _y;

  Point(this._x, this._y);

  @override
  String toString() {
    return "x= $_x - y= $_y";
  }

  static Point translate(double x, double y, double dx, double dy) {
    return Point(x + dx, y + dy);
  }

  double get x => _x;
  double get y => _y;
}

class Shape {
  final double _width;
  final double _high;
  final Point _left_bottom;
  final String? _bg_color;

  Shape(this._width, this._high, this._left_bottom, [this._bg_color]);

  Point getRightTop() {
    return Point.translate(_left_bottom.x, _left_bottom.y, _width, _high);
  }

  @override
  String toString() {
    Point rightTop = getRightTop();
    return 'Shape(width: $_width, high: $_high, left_bottom: $_left_bottom, right_top: $rightTop, bg_color: $_bg_color)';
  }

  double get width => _width;
  double get high => _high;
  Point get left_bottom => _left_bottom;
}

void main() {
  Point p1 = Point(1, 2);
  Shape s1 = Shape(2, 5, p1);
  print(s1);
}
*/