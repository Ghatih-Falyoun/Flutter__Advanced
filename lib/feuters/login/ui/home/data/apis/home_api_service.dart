import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_constants.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/apis/home_api_constants.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:retrofit/http.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializtionEp)
  Future<SpecializationsResponseModel> getHomeData();
}
