import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/widgets/login_bloc_listener.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/logic/cubit/sing_up_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/logic/cubit/sing_up_state.dart';

class SingUpLisetener extends StatelessWidget {
  const SingUpLisetener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SingUpCubit, SingUpState>(
      listenWhen: (previous, current) =>
          current is Error || current is Loading || current is success,
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setUpErrorState(context, error);
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
        );
      },
            child: const SizedBox.shrink(),
    );
  }
}
