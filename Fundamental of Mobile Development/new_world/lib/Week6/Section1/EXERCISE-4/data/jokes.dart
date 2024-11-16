// jokes.dart

class Joke {
  final String title;
  final String description;

  const Joke({
    required this.title,
    required this.description,
  });
}

const List<Joke> jokes = [
  Joke(
    title: "Why don't scientists trust atoms?",
    description: "Because they make up everything!",
  ),
  Joke(
    title: "Why did the scarecrow win an award?",
    description: "Because he was outstanding in his field!",
  ),
  Joke(
    title: "Why don't skeletons fight each other?",
    description: "They don't have the guts.",
  ),
  Joke(
    title: "Why did the bicycle fall over?",
    description: "Because it was two-tired!",
  ),
  Joke(
    title: "What do you call fake spaghetti?",
    description: "An impasta.",
  ),
  Joke(
    title: "Why couldn't the leopard play hide and seek?",
    description: "Because he was always spotted.",
  ),
  Joke(
    title: "What do you call cheese that isn't yours?",
    description: "Nacho cheese.",
  ),
  Joke(
    title: "Why did the math book look sad?",
    description: "It had too many problems.",
  ),
  Joke(
    title: "What do you call a bear with no teeth?",
    description: "A gummy bear.",
  ),
  Joke(
    title: "Why can't your nose be 12 inches long?",
    description: "Because then it would be a foot.",
  ),
  // Add more jokes if needed to reach at least 20
];
