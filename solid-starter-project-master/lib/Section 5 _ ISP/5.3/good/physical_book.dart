


import 'mixines/gift_wrappable.dart';
import 'mixines/returnable.dart';
import 'mixines/reviewable.dart';
import 'mixines/shippable.dart';

class PhysicalBook with Shippable, Returnable, GiftWrappable, Reviewable {
  String title;
  String author;
  double price;
  String isbn;

  PhysicalBook(this.title, this.author, this.price, this.isbn) {
    setWeight(0.5);
    setReturnWindow(30);
  }

  double getTotalPrice() {
    return price + calculateShippingCost() + getGiftWrapCost();
  }

  @override
  String toString() => 'Physical Book: $title by $author - \$$price';
}
