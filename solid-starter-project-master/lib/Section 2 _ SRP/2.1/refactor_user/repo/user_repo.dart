import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/model/user_model.dart';

class UserRepo {
  void save(UserModel user) {
    print('Saving user ${user.name} to database...');
  }
}
