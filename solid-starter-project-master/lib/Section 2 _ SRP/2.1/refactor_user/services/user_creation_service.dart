import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/emails/user_email_service.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/logger/user_loger.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/model/user_model.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/repo/user_repo.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/validation/email_validator.dart';
import 'package:solid_examples/Section%202%20_%20SRP/2.1/refactor_user/validation/hash_password.dart';


class UserCreationService {
  UserCreationService(
    this._userLoger,
    this._emailService,
    this._userRepo,
    this._hashPassword,
    this._emailValidator,
  );
  final UserLoger _userLoger;
  final UserEmailService _emailService;
  final UserRepo _userRepo;
  final HashPassword _hashPassword;
  final EmailValidator _emailValidator;

  void createUser(UserModel user) {
    if (!_emailValidator.isValidEmail(user.email)) return;

    _hashPassword.hashPassword(user);
    _userRepo.save(user);
    _emailService.sendWelcomeEmail(user);
    _userLoger.logUserCreation(user);
    // logUserCreation();
  }
}
