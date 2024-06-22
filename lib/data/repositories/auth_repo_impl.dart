import 'package:dartz/dartz.dart';
import 'package:project4_mobile/data/datasources/auth/auth_remote_data_source.dart';
import 'package:project4_mobile/data/models/type_login.dart';
import 'package:project4_mobile/domain/entities/user.dart';
import 'package:project4_mobile/domain/repositories/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource dataAuth;
  AuthRepoImpl({required this.dataAuth});

  @override
  Future<Either<Exception, TypeLogin>> checkTypeLogin(String email) {
    // TODO: implement checkTypeLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, User>> loginWithGG(
      String email, String accessToken) {
    // TODO: implement loginWithGG
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, User>> loginWithPassword(
      String email, String password) {
    // TODO: implement loginWithPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, void>> registerWithGG(
      String email, String accessToken, String fullname) {
    // TODO: implement registerWithGG
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, void>> registerWithPassword(
      String email, String newPassword, String fullname) {
    // TODO: implement registerWithPassword
    throw UnimplementedError();
  }
}
