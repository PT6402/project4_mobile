// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:project4_mobile/data/models/type_device.dart';
import 'package:project4_mobile/data/models/type_login.dart';

class RegisterReq {
  String? email;
  String? fullname;
  String? password;

  TypeDevice? typeDevice;
  TypeLogin? typeLogin;
  RegisterReq({
    this.email,
    this.fullname,
    this.password,
    this.typeDevice,
    this.typeLogin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'fullname': fullname,
      'password': password,
      'typeDevice': typeDevice?.toMap(),
      'typeLogin': typeLogin?.toMap(),
    };
  }

  factory RegisterReq.fromMap(Map<String, dynamic> map) {
    return RegisterReq(
      email: map['email'] != null ? map['email'] as String : null,
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      typeDevice: map['typeDevice'] != null
          ? TypeDevice.fromMap(map['typeDevice'] as Map<String, dynamic>)
          : null,
      typeLogin: map['typeLogin'] != null
          ? TypeLogin.fromMap(map['typeLogin'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterReq.fromJson(String source) =>
      RegisterReq.fromMap(json.decode(source) as Map<String, dynamic>);
}
