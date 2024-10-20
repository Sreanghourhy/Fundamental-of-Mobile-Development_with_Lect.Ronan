bool matchingPair(String input) {
  final matchingPairs = {
    '(': ')',
    '{': '}',
    '[': ']',
  };

  List<String> stack = [];

  // Filter out non-bracket characters, only keep brackets
  String bracket = input.replaceAll(RegExp(r'[^()\[\]{}]'), '');

  for (int i = 0; i < bracket.length; i++) {
    String char = bracket[i];
    if (matchingPairs.containsKey(char)) {
      stack.add(char);
    } else if (matchingPairs.containsValue(char)) {
      if (stack.isEmpty || matchingPairs[stack.last] != char) {
        return false;
      } else {
        stack.removeLast();
      }
    }
  }

  return stack.isEmpty;
}

void main() {
  // Input string with mixed characters
  String input = "{[[(a)b]c]d}";

  if (matchingPair(input)) {
    print("Balanced");
  } else {
    print("Not Balanced");
  }
}
