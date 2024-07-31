import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/logic/cubit/sing_up_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/widgets/name_phone_email_password_confirmation_field.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/widgets/sing_up_lisetener.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class singUpScreen extends StatelessWidget {
  const singUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24bLueblod,
                  textAlign: TextAlign.right,
                ),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                NamePhoneEmailPasswordConfirmationField(),
                AppTextButton(
                    buttonText: 'Create Account',
                    textStyle: TextStyles.font16WhitesemiBold,
                    onPressed: () {
                      validateDoSingup(context);
                    }),
                SingUpLisetener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateDoSingup(BuildContext context) {
    if (context.read<SingUpCubit>().fromKey.currentState!.validate()) {
      context.read<SingUpCubit>().emitSingUpState();
    }
  }
}
