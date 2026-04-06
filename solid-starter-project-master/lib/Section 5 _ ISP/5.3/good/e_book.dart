


import 'mixines/downloadable.dart';
import 'mixines/reviewable.dart';

class EBook with Downloadable, Reviewable {
  String title;
  String author;
  double price;
  String isbn;

  EBook(
    this.title,
    this.author,
    this.price,
    this.isbn,
    String downloadUrl,
    int fileSize,
  ) {
    setDownloadInfo(downloadUrl, fileSize, 'PDF');
  }

  @override
  String toString() =>
      'E-Book: $title by $author - \$$price (${getFileSizeFormatted()})';
}
