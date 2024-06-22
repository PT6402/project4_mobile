import 'package:dartz/dartz.dart';
import 'package:project4_mobile/data/models/type_login.dart';
import 'package:project4_mobile/domain/entities/user.dart';

abstract class AuthRepo {
  // check type login
  Future<Either<Exception, TypeLogin>> checkTypeLogin(String email);

  // login
  Future<Either<Exception, User>> loginWithGG(String email, String accessToken);
  Future<Either<Exception, User>> loginWithPassword(
      String email, String password);

  // register
  Future<Either<Exception, void>> registerWithGG(
      String email, String accessToken, String fullname);
  Future<Either<Exception, void>> registerWithPassword(
      String email, String newPassword, String fullname);
}
