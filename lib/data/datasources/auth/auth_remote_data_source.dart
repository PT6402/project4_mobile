import 'package:project4_mobile/data/dto/auth/auth_req.dart';
import 'package:project4_mobile/data/dto/auth/register_req.dart';
import 'package:project4_mobile/data/dto/result_dto.dart';

abstract class AuthRemoteDataSource {
  Future<ResultDto> register(RegisterReq req);
  Future<ResultDto> login(AuthReq req);
}
