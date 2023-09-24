class Movie {
  final String name;
  final String images;
  final String date;

  Movie({required this.name, required this.images, required this.date});

  factory Movie.fromJson(dynamic json) {
    return Movie(
        name: json['title'] as String,
        images: json['thumbnail']as String,
        date: json['year'] as String);
  }

  static List<Movie> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Movie.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'Recipe {name: $name, image: $images, date: $date}';
  }
}