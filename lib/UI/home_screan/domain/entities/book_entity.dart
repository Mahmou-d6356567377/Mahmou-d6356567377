class BookEntity {
  final String image;
  final String title;
  final String authorName;
  final String  price;
  final String rating;

  BookEntity(
      {required this.image,
      required this.title,
      required this.authorName,
      required this.price,
      required this.rating});
}
