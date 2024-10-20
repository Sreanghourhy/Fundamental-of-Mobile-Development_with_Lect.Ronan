enum Direction { north, east, south, west }

void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "RAALAL";

  // Function to turn left or right
  Direction turn(Direction current, String instruction) {
    if (instruction == 'L') {
      return Direction.values[(current.index - 1) % 4];
    } else if (instruction == 'R') {
      return Direction.values[(current.index + 1) % 4];
    }
    return current;
  }

  // Function to move forward based on the current direction
  void advance() {
    switch (direction) {
      case Direction.north:
        y += 1;
        break;
      case Direction.east:
        x += 1;
        break;
      case Direction.south:
        y -= 1;
        break;
      case Direction.west:
        x -= 1;
        break;
    }
  }

  // Process the instructions
  for (var instruction in instructions.split('')) {
    if (instruction == 'L' || instruction == 'R') {
      direction = turn(direction, instruction);
    } else if (instruction == 'A') {
      advance();
    }
  }

  // Print the final position and direction
  print("Final position: {$x, $y}"); // Output: {9, 4}
  print("Facing: ${direction.name}"); // Output: west
}
