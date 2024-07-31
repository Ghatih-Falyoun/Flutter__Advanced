import 'package:flutter_complete_project/core/networking/api_error_handeler.dart';
import 'package:flutter_complete_project/core/networking/api_result.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/data/model/sing_up_request_body.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/data/model/sing_up_response.dart';

class SingUpRepo {
  final ApiService _apiService;
  SingUpRepo(this._apiService);
  Future<ApiResult<SingUpResponse>> singUp(
      SingUpRequestBody singuprequestbody) async {
    try {
      final response = await _apiService.singUp(singuprequestbody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
