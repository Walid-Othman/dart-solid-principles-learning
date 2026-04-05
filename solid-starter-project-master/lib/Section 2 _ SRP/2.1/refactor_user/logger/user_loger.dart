import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/model/user_model.dart';

class UserLoger {
   void logUserCreation(UserModel user) {
    print('LOG: User ${user.name} created at ${DateTime.now()}');
  }
}