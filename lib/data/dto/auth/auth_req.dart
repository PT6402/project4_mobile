import 'dart:convert';
import 'package:project4_mobile/data/models/type_login.dart';
import 'package:project4_mobile/data/models/type_role.dart';

class AuthReq {
  String? fullname;
  String? email;
  TypeRole? role;
  TypeLogin? typeLogin;
  String? accessToken;
  String? refreshToken;

  AuthReq({
    this.fullname,
    this.email,
    this.role,
    this.typeLogin,
    this.accessToken,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullname': fullname,
      'email': email,
      'role': role?.toMap(),
      'type_login': typeLogin?.toMap(),
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
  }

  factory AuthReq.fromMap(Map<String, dynamic> map) {
    return AuthReq(
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      role: map['role'] != null
          ? TypeRole.fromMap(map['role'] as Map<String, dynamic>)
          : null,
      typeLogin: map['type_login'] != null
          ? TypeLogin.fromMap(map['type_login'] as Map<String, dynamic>)
          : null,
      accessToken:
          map['access_token'] != null ? map['access_token'] as String : null,
      refreshToken:
          map['refresh_token'] != null ? map['refresh_token'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthReq.fromJson(String source) =>
      AuthReq.fromMap(json.decode(source) as Map<String, dynamic>);
}
