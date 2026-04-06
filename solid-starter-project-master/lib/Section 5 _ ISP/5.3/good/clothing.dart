import 'mixines/gift_wrappable.dart';
import 'mixines/returnable.dart';
import 'mixines/reviewable.dart';
import 'mixines/shippable.dart';

class Clothing with Shippable, GiftWrappable, Reviewable, Returnable {
  String name;
  String size;
  String color;
  double price;

  Clothing(this.name, this.size, this.color, this.price) {
    setWeight(0.3);
    setReturnWindow(60);
  }

  double getTotalPrice() {
    return price + calculateShippingCost() + getGiftWrapCost();
  }

  @override
  String toString() => 'Clothing: $name ($size, $color) - \$$price';
}
