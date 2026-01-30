import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/movie_card.dart';

final List<Movie> movies = [
  Movie(
    title: "The Dark Knight",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg",
    description: "Batman in Gotham City.",
    genre: "Action",
    director: "Christopher Nolan",
    duration: 152,
    releaseYear: 2008,
    rating: 9.0,
  ),
  Movie(
    title: "Inception",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg",
    description: "A thief enters dreams to steal secrets.",
    genre: "Sci-Fi",
    director: "Christopher Nolan",
    duration: 148,
    releaseYear: 2010,
    rating: 8.8,
  ),
  Movie(
    title: "Interstellar",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkshzpfsh566sD5Im2qzFxaxfNFFqSQAFZgg&s",
    description: "travel through space to save humanity.",
    genre: "Sci-Fi",
    director: "Christopher Nolan",
    duration: 169,
    releaseYear: 2014,
    rating: 8.6,
  ),
  Movie(
    title: "The Matrix",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZNl1EYS9z4PfNViNWMK_V5ZspshcWfksobw&s",
    description: "hacker discovers the truth about reality.",
    genre: "Sci-Fi",
    director: "Lana Wachowski, Lilly Wachowski",
    duration: 136,
    releaseYear: 1999,
    rating: 8.7,
  ),
  Movie(
    title: "Toy Story",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd1_9O7ZAMWdim0aZ3AGYpzugvq7EPOdJpHA&s",
    description: "Toys come alive when humans are away.",
    genre: "Animation",
    director: "John Lasseter",
    duration: 81,
    releaseYear: 1995,
    rating: 8.3,
  ),
  Movie(
    title: "Mr. Robot",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BOTg4NTBiZDAtZTc0YS00NzZlLTg4Y2ItNGQ3M2ZlMDM5MWQzXkEyXkFqcGc@._V1_.jpg",
    description: "A hacker fights powerful corporations.",
    genre: "Drama",
    director: "Sam Esmail",
    duration: 290,
    releaseYear: 2015,
    rating: 8.5,
  ),
  Movie(
    title: "Avengers: Endgame",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg",
    description: "The Avengers assemble for one final battle.",
    genre: "Action",
    director: "Anthony Russo, Joe Russo",
    duration: 181,
    releaseYear: 2019,
    rating: 8.4,
  ),
  Movie(
    title: "RRR",
    imageUrl:
      "https://upload.wikimedia.org/wikipedia/en/d/d7/RRR_Poster.jpg",
    description: "A powerful story of friendship and revolution.",
    genre: "Action",
    director: "S.S.Rajamouli",
    duration: 182,
    releaseYear: 2022,
    rating: 8.0,
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}
