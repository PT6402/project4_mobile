// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AuthRes {
  String? email;
  String? password;

  AuthRes({this.email, this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory AuthRes.fromMap(Map<String, dynamic> map) {
    return AuthRes(
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthRes.fromJson(String source) =>
      AuthRes.fromMap(json.decode(source) as Map<String, dynamic>);
}
