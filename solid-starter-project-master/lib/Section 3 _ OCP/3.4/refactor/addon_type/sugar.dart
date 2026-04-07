import 'package:solid_examples/Section%203%20_%20OCP/3.4/refactor/addon.dart';

class Sugar implements Addon {
  @override
  String getDescription() => "sugar";
  @override
  double getCost() => 20;
}
