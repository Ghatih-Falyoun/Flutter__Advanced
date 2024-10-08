import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/constants.dart';
import 'package:flutter_complete_project/core/helpers/shared_prefrences.dart';
import 'package:flutter_complete_project/core/networking/dio_factory.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/models/login_response.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/repos/login_repo.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/logic/cubit/login_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final fromKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginrequestbody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginrequestbody);

    response.when(
      success: (LoginResponse) async {
        await saveUserToken(LoginResponse.userData?.token ?? '');
        print('it logged in');
        emit(LoginState.success(LoginResponse));
      },
      failure: (errorhandler) {
        emit(LoginState.error(error: errorhandler.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecurredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
}
