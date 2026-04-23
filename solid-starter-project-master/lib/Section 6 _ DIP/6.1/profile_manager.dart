// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:solid_examples/Section%206%20_%20DIP/6.1/data_source/user_data_source.dart';
import 'package:solid_examples/Section%206%20_%20DIP/6.1/user_profile.dart';

class ProfileManager {
  final UserDataSource apiService;
  ProfileManager(this.apiService);

  Future<UserProfile> loadProfile(String userId) async {
    try {
      final data = await apiService.getUserProfile(userId);
      return UserProfile(
        id: data['id'],
        name: data['name'],
        email: data['email'],
        avatarUrl: data['avatar_url'],
      );
    } catch (e) {
      print('Error log: $e');
  rethrow;
    }
    
  }

  Future<void> updateProfile(UserProfile profile) async {
    await apiService.updateUserProfile(profile.id, {
      'name': profile.name,
      'email': profile.email,
      'avatar_url': profile.avatarUrl,
    });
  }
}
