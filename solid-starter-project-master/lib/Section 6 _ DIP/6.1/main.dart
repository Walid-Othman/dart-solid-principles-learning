//"High-level modules should not depend on low-level modules. Both should depend on abstractions."
// "Abstractions should not depend on details. Details should depend on abstractions."

import 'package:solid_examples/Section%206%20_%20DIP/6.1/firebase_api_service.dart';
import 'package:solid_examples/Section%206%20_%20DIP/6.1/profile_manager.dart';

void main() async {
  final profileManager = ProfileManager(FirebaseApiService());


  try {
  final profile = await profileManager.loadProfile('user123');
  print('Loaded profile: ${profile.name}');} catch (e) {
    print(e.toString());
  }
}
