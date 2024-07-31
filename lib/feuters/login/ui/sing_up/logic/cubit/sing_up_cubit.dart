import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/networking/api_error_handeler.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/data/model/sing_up_request_body.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/data/repo/sing_up_repo.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/logic/cubit/sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  SingUpRepo _singUpRepo;
  SingUpCubit(this._singUpRepo) : super(SingUpState.initial());
  final fromKey = GlobalKey<FormState>();

  TextEditingController NameController = TextEditingController();
  TextEditingController PhoneNumberController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  void emitSingUpState() async {
    final response = await _singUpRepo.singUp(SingUpRequestBody(
        name: NameController.text,
        email: EmailController.text,
        phoneNumber: int.parse(PhoneNumberController.text),
        gender: 1,
        password: PasswordController.text,
        password_confirmation: PasswordController.text));
    response.when(
      success: (data) {
        emit(SingUpState.success(data));
      },
      failure: (errorhandler) {
        emit(SingUpState.error(error: errorhandler.apiErrorModel.message ?? ''));
      },
    );
  }
}
