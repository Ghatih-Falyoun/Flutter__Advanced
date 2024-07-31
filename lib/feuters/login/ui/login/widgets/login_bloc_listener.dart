import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';
import 'package:flutter_complete_project/core/networking/api_result.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          loading: () {
            showDialog(
                context: context,
                builder: (contextbuilder) => const Center(
                      child: CircularProgressIndicator(
                        color: colorManager.mainblue,
                      ),
                    ));
          },
          error: (error) {
            setUpErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  
}
void setUpErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(
            Icons.error,
            size: 32,
            color: Colors.red,
          ),
          content: Text(
            error,
            style: TextStyles.font14bLueSemiBold,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it',style: TextStyles.font15DarkBlueMedium,))
          ],
        );
      },
    );
  }