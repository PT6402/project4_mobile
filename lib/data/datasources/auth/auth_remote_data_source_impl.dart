import 'package:project4_mobile/data/datasources/auth/auth_remote_data_source.dart';
import "package:http/http.dart" as http;
import 'package:project4_mobile/data/dto/auth/auth_req.dart';
import 'package:project4_mobile/data/dto/auth/register_req.dart';
import 'package:project4_mobile/data/dto/result_dto.dart';
import 'package:project4_mobile/data/models/user_model.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;
  static const urlServer = "http://localhost:9090/api/v1/auth";

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<ResultDto> login(AuthReq req) async {
    final response =
        await client.post(Uri.parse("$urlServer/login"), body: req.toJson());
    if (response.statusCode == 200) {
      return ResultDto<UserModel>(
          status: true,
          message: "ok",
          model: UserModel.fromJson(response.body));
    } else {
      throw Exception("error");
    }
  }

  @override
  Future<ResultDto> register(RegisterReq req) async {
    final response =
        await client.post(Uri.parse("$urlServer/register"), body: req.toJson());

    if (response.statusCode == 200) {
      return ResultDto(status: true, message: "ok");
    } else {
      throw Exception("error");
    }
  }
}
