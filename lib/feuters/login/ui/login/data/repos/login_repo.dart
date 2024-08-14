import 'package:flutter_complete_project/core/networking/api_error_handeler.dart';
import 'package:flutter_complete_project/core/networking/api_result.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginrequestbody) async {
    try {
      final response = await _apiService.login(loginrequestbody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  
}
