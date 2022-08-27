class Movie {
  final String id;
  final String originalTitle;
  late List<String>? imageUrls;
  final String description;
  final String releaseDate;
  final String director;
  late bool isWatched;
  Movie({
    required this.id,
    required this.originalTitle,
    this.imageUrls,
    required this.description,
    required this.releaseDate,
    required this.director,
    required this.isWatched
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      originalTitle: json['original_title'],
      imageUrls: [],
      description: json['description'],
      releaseDate: json['release_date'],
      director: json['director'],
      isWatched: false
    );
  }
}