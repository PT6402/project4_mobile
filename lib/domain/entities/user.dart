import 'package:project4_mobile/data/models/type_login.dart';
import 'package:project4_mobile/data/models/type_role.dart';

class User {
  String? fullname;
  String? email;
  TypeRole? role;
  TypeLogin? typeLogin;
  String? accessToken;

  User(
      {this.fullname, this.email, this.role, this.typeLogin, this.accessToken});
}
