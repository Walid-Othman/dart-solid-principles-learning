import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:solid_examples/Section%206%20_%20DIP/6.1/data_source/user_data_source.dart';

class FirebaseApiService implements UserDataSource {
  final String baseUrl = 'https://myapp.firebaseio.com';
@override
  Future<Map<String, dynamic>> getUserProfile(String userId) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$userId.json'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print('Faild to get user');
  throw Exception('Faild to load user profile');
      
    }
  }
@override
  Future<void> updateUserProfile(
    String userId,
    Map<String, dynamic> data,
  ) async {
    await http.put(
      Uri.parse('$baseUrl/users/$userId.json'),
      body: json.encode(data),
    );
  }
}
