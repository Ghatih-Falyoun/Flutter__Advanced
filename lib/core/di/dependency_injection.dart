import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/core/networking/dio_factory.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/repos/login_repo.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/data/repo/sing_up_repo.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/logic/cubit/sing_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getit.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getit()),
  );
  getit.registerFactory<LoginCubit>(
    () => LoginCubit(getit()),
  );

  //Sing up
  getit.registerLazySingleton<SingUpRepo>(() => SingUpRepo(getit()));

  getit.registerFactory<SingUpCubit>(() => SingUpCubit(getit()));
}
