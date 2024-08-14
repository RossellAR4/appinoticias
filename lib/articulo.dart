class Article {
  final String title;
  final String description;
  final String urlToImage;

  Article({required this.title, required this.description, required this.urlToImage});

factory Article.fromJson(Map<String, dynamic> json) {
  return Article(
    title: json['title'] ?? 'No title available',
    description: json['description'] ?? 'No description available',
    urlToImage: json['urlToImage'] ?? 'https://example.com/default_image.jpg',
  );
}

}
