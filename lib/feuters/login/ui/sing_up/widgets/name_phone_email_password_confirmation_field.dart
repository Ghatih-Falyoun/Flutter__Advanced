import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/app_regex.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/widgets/app_text_form_field.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/logic/cubit/sing_up_cubit.dart';

class NamePhoneEmailPasswordConfirmationField extends StatefulWidget {
  NamePhoneEmailPasswordConfirmationField({super.key});

  @override
  State<NamePhoneEmailPasswordConfirmationField> createState() =>
      _NamePhoneEmailPasswordConfirmationFieldState();
}

class _NamePhoneEmailPasswordConfirmationFieldState
    extends State<NamePhoneEmailPasswordConfirmationField> {
  String password = 'w';
  bool isPasswrodObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SingUpCubit>().fromKey,
      child: Column(
        children: [
          vericalSpace(15),
          AppTextFormField(
            controller: context.read<SingUpCubit>().NameController,
            hintText: 'Name',
            validator: (value) {
              return ifTheFieldIsEmptyWrite(value, 'Enter your Name');
            },
          ),
          vericalSpace(15),
          AppTextFormField(
            controller: context.read<SingUpCubit>().PhoneNumberController,
            hintText: 'Phone number',
            validator: (value) {
              if (!AppRegex.isPhoneNumberValid(value!)) {
                return 'please enter valid phone number';
              }
              ;
            },
          ),
          vericalSpace(15),
          AppTextFormField(
            controller: context.read<SingUpCubit>().EmailController,
            hintText: 'Email',
            validator: (p0) {
              if (!AppRegex.isEmailValid(p0!)) {
                return 'Please enter valid Email';
              }
            },
          ),
          vericalSpace(15),
          AppTextFormField(
            controller: context.read<SingUpCubit>().PasswordController,
            hintText: 'Password',
            isObscureText:isPasswrodObscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswrodObscure = !isPasswrodObscure;
                });
              },
              child:
                  Icon(isPasswrodObscure ? Icons.visibility_off : Icons.visibility)
              ),
            validator: (p0) {
              password = p0!;
              if (!AppRegex.isPasswordValid(p0!)) {
                return 'Please enter valid password';
              }
            },
          ),
          vericalSpace(15),
          AppTextFormField(
            hintText: 'Password Confirmation',
            isObscureText: true,
            validator: (p0) {
              print('$p0 \n');
              print(password);
              if (p0! != password) {
                return 'The password doesn\'t match';
              }
            },
          ),
          vericalSpace(15),
        ],
      ),
    );
  }

  String? ifTheFieldIsEmptyWrite(String? value, String Message) {
    if (value == null || value.isEmpty) {
      return Message;
      
    }
  }
}
