import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              movie.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              movie.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text("Genre: ${movie.genre}"),
            Text("Release Year: ${movie.releaseYear}"),
            Text("Rating: ${movie.rating}"),
            const SizedBox(height: 10),
            const Text(
              "Description:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(movie.description),
          ],
        ),
      ),
    );
  }
}
