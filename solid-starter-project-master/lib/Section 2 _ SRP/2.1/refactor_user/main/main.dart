import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/emails/user_email_service.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/logger/user_loger.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/model/user_model.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/repo/user_repo.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/services/user_creation_service.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/validation/email_validator.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/validation/hash_password.dart';

void main() {
  UserCreationService userCreationService = UserCreationService(
    UserLoger(),
    UserEmailService(),
    UserRepo(),
    HashPassword(),
    EmailValidator(),
  );
  userCreationService.createUser(
    UserModel(name: "Walid", email: "walid@example.com", password: "password"),
  );
}
