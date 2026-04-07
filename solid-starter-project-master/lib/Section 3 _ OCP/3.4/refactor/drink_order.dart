
import 'package:solid_examples/Section%203%20_%20OCP/3.4/refactor/addon.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.4/refactor/drink.dart';

class DrinkOrder {
  DrinkOrder(this.drink);
  final Drink drink;
  final List<Addon> addons = [];

  addAddon(Addon addon) {
    addons.add(addon);
    print("add ${addon.getDescription()}");
  }

  getTotalPrice() {
    double totalPrice = drink.getCost();

    for (var addon in addons) {
      totalPrice += addon.getCost();
    }
    return totalPrice;
  }
}
