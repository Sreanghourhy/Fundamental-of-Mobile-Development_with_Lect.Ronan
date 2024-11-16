import 'package:flutter/material.dart';
import 'package:new_world/Week6/Section1/EXERCISE-4/data/jokes.dart'; // Import the jokes data

Color appColor = Colors.green[300] as Color;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: const JokesList(),
      ),
    );
  }
}

class JokesList extends StatefulWidget {
  const JokesList({super.key});

  @override
  State<JokesList> createState() => _JokesListState();
}

class _JokesListState extends State<JokesList> {
  int? _favoriteJokeIndex; // Track the index of the favorite joke

  void onFavoriteClick(int index) {
    setState(() {
      if (_favoriteJokeIndex == index) {
        _favoriteJokeIndex = null;
      } else {
        _favoriteJokeIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jokes.length, // Number of jokes
      itemBuilder: (context, index) {
        final joke = jokes[index];
        return FavoriteCard(
          title: joke.title,
          description: joke.description,
          isFavorite: _favoriteJokeIndex == index,
          onFavoriteClick: () => onFavoriteClick(index),
        );
      },
    );
  }
}

class FavoriteCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isFavorite;
  final VoidCallback onFavoriteClick;

  const FavoriteCard({
    super.key,
    required this.title,
    required this.description,
    required this.isFavorite,
    required this.onFavoriteClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: appColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(description),
              ],
            ),
          ),
          IconButton(
            onPressed: onFavoriteClick,
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
