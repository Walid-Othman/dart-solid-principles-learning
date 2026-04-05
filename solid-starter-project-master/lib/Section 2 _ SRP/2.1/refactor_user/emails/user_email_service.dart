import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/model/user_model.dart';

class UserEmailService{
    void sendWelcomeEmail(UserModel user) {
    print('Sending welcome email to ${user.email}...');
  }
}