import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/core/widgets/app_text_form_field.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/widgets/dont_have_account_text.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/widgets/email_and_passwod.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final fromKey = GlobalKey<FormState>();
  bool isObsucreText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(31.h, 40.w, 31.h, 0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcom Back',
                style: TextStyles.font24Bluebold,
                textAlign: TextAlign.right,
              ),
              vericalSpace(8),
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GrayRegular
                    .copyWith(height: 1.4, wordSpacing: 1.2),
              ),
              vericalSpace(36),
              Column(
                children: [
                  const EmailAndPasswod(),
                  AppTextFormField(
                    hintText: 'Email',
                  ),
                  vericalSpace(16),
                  AppTextFormField(
                    hintText: 'Password',
                    isObscureText: isObsucreText,
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                          isObsucreText = !isObsucreText;  
                          });
                        },
                        child: Icon(isObsucreText
                            ? Icons.visibility_off
                            : Icons.visibility)),
                  ),
                  vericalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd ,
                    child: Text('Forgot Password'),
                  ),
                  vericalSpace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    textStyle: TextStyles.font16WhitesemiBold,
                    onPressed: () {},
                  ),
                  vericalSpace(16),
                    const TermsAndConditionsText(),
                    vericalSpace(60),
                    const DontHaveAccountText(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
