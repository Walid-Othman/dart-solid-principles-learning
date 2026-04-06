import 'package:solid_examples/Section%203%20_%20OCP/3.2/factory/file_logger.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.2/factory/logger.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.2/factory/user_service.dart';

void main() {
  final Logger logger = FileLogger('app.log');
  final userService = UserService(logger);

  userService.createUser('Alice');
  userService.deleteUser('Bob');
}
