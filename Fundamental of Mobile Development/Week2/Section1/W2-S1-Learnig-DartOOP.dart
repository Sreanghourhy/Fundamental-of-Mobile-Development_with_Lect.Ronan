class Tree {
  String type;
  double height;

  Tree(this.type, this.height);

  @override
  String toString() => "$type tree, height: $height m";
}

class Wall {
  String color;
  Wall(this.color);
  @override
  String toString() => "$color wall";
}

class Roof {
  String material, color;
  Roof(this.material, this.color);
  @override
  String toString() => "$material roof, color: $color";
}

class Window {
  String type, color;
  Window(this.type, this.color);
  @override
  String toString() => "$type window, color: $color";
}

class Door {
  String color, material;
  bool isOpen = false;

  Door(this.color, this.material);

  void open() => isOpen = true;
  @override
  String toString() => "$material door, color: $color, open: $isOpen";
}

class House {
  String address;
  List<Tree> trees = [];
  List<Wall> walls = [];
  List<Window> windows = [];
  Roof? roof;
  Door? door;

  House(this.address);

  @override
  String toString() {
    return '''
House address: $address
Trees: ${trees.join(", ")}
Walls: ${walls.join(", ")}
Windows: ${windows.join(", ")}
Roof: $roof
Door: $door
    ''';
  }
}

void main() {
  House myHouse = House("factory st CCV");
  myHouse.trees.add(Tree("White Oak", 5.5));
  myHouse.walls.add(Wall("darker yolk"));
  myHouse.windows.add(Window("Glass", "red"));
  myHouse.roof = Roof("Shingles", "Gray");
  myHouse.door = Door("White", "Wood");
  myHouse.door!.open();

  print(myHouse);
}
