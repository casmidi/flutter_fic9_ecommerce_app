// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// {
//     "name": "nadia fic09",
//     "password": "12345678",
//     "email": "nadia@fic09.com",
//     "username": "nadia"
// }

class RegisterRequestModel {
  final String name;
  final String password;
  final String email;
  final String username;

  RegisterRequestModel(
      {required this.name,
      required this.password,
      required this.email,
      required this.username});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'password': password,
      'email': email,
      'username': username,
    };
  }

  // factory RegisterRequestModel.fromMap(Map<String, dynamic> map) {
  //   return RegisterRequestModel(
  //     map['name'] as String,
  //     map['password'] as String,
  //     map['email'] as String,
  //     map['username'] as String,
  //   );
  // }

  String toJson() => json.encode(toMap());

  // factory RegisterRequestModel.fromJson(String source) => RegisterRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
