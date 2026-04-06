

import 'package:solid_examples/Section%203%20_%20OCP/3.2/factory/logger.dart';

class UserService {
  final Logger _logger;

  UserService(this._logger);

  void createUser(String username) {
    print('Creating user: $username');

    _logger.log('User created: $username');
  }

  void deleteUser(String username) {
    print('Deleting user: $username');
    _logger.log('User deleted: $username');
  }
}
