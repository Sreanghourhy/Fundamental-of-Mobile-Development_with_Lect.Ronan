void main() {
  // List of student scores
  List<int> score = [45, 67, 82, 49, 51, 78, 92, 30];
  var scores = score.where((x) => x >= 50);
  print('scores = $scores');
}