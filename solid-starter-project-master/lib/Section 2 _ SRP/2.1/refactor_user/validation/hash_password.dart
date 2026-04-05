import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/model/user_model.dart';

class HashPassword {
  String hashPassword( UserModel user) {
    return '${user.password}_hashed';
  }
}