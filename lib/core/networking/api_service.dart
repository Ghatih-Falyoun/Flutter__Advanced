import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_constants.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/models/login_response.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/data/model/sing_up_request_body.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/data/model/sing_up_response.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/sing_up_screen.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginrequestBody);

    @POST(ApiConstants.singUp)
  Future<SingUpResponse> singUp(@Body() SingUpRequestBody singUpRequestBody);
}

