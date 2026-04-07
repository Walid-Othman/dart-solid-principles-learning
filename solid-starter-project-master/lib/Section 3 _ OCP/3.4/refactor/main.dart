
import 'package:solid_examples/Section%203%20_%20OCP/3.4/refactor/addon_type/mailk.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.4/refactor/addon_type/sugar.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.4/refactor/drink_order.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.4/refactor/menu/coffe.dart';

void main(){
  DrinkOrder drinkOrder = DrinkOrder(Coffe());
  drinkOrder.addAddon(Sugar());
  drinkOrder.addAddon(Mailk());
  print(drinkOrder.getTotalPrice());
}