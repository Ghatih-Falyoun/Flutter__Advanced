import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/models/login_response.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/data/repos/login_repo.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/logic/cubit/login_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  void emitLoginStates(LoginRequestBody loginrequestbody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginrequestbody);

    response.when(
      success: (LoginResponse) {
        emit(LoginState.success(LoginResponse));
      },
      failure: (errorhandler) {
        emit(LoginState.error(error: errorhandler.apiErrorModel.message ?? ''));
      },
    );
  }
}
