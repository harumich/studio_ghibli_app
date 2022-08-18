class Movie {
  final int id;
  final String originalTitle;
  final List<String>? imageUrls;
  final String description;
  final String releaseDate;
  final String director;

  Movie({
    required this.id,
    required this.originalTitle,
    this.imageUrls,
    required this.description,
    required this.releaseDate,
    required this.director,
  });
}