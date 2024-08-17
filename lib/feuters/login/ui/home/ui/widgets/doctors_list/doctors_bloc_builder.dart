import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/networking/api_error_handeler.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctor_list.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorslist) {
            return setupSuccess(doctorslist);
          },
          doctorsError: (errorHandler) {
            return setupError(errorHandler);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(List<Doctors?>? doctorslist) {
    return DoctorList(
      doctorsList: doctorslist,
    );
  }
  
  Widget setupError(ErrorHandler errorHandler) {
    return const SizedBox.shrink();
  }
}
