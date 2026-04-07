
import 'package:solid_examples/Section%203%20_%20OCP/3.4/refactor/drink.dart';

class Coffe implements Drink {
  @override
  String getDescription() => "coffe";
  @override
  double getCost() => 30;
}
