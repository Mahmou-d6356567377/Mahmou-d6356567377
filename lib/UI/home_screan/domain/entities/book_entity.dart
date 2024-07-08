class BookEntity {
  final String Image;
  final String title;
  final String AuthorName;
  final num price;
  final num rating;

  BookEntity(
      {required this.Image,
      required this.title,
      required this.AuthorName,
      required this.price,
      required this.rating});
}
