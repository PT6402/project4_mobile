// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:project4_mobile/data/models/type_login.dart';
import 'package:project4_mobile/data/models/type_role.dart';
import 'package:project4_mobile/domain/entities/user.dart';

class UserModel {
  String? fullname;
  String? email;
  TypeRole? role;
  TypeLogin? typeLogin;
  String? accessToken;
  UserModel({
    this.fullname,
    this.email,
    this.role,
    this.typeLogin,
    this.accessToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullname': fullname,
      'email': email,
      'role': role?.toMap(),
      'typeLogin': typeLogin?.toMap(),
      'accessToken': accessToken,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      role: map['role'] != null
          ? TypeRole.fromMap(map['role'] as Map<String, dynamic>)
          : null,
      typeLogin: map['typeLogin'] != null
          ? TypeLogin.fromMap(map['typeLogin'] as Map<String, dynamic>)
          : null,
      accessToken:
          map['accessToken'] != null ? map['accessToken'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(fullname: $fullname, email: $email, role: $role, typeLogin: $typeLogin, accessToken: $accessToken)';
  }

  User toEntity() {
    return User(
        fullname: fullname,
        email: email,
        role: role,
        typeLogin: typeLogin,
        accessToken: accessToken);
  }
}
