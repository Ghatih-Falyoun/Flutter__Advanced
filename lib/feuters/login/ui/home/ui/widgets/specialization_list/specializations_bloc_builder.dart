import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctor_list.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctor_recommendation.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/specialization_list/speciality_shimmer_loading.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/specialization_list/speciality_view_all.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationDataList) {
            print(specializationDataList!.length);
            return setupSuccess(specializationDataList);
          },
          specializationsError: (errorHandler) {
            return SizedBox.shrink();
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(children: [
        SpecialityShimmerLoading(),
        DoctorsShimmerLoading()
      ],),
    );
  }

  Widget setupSuccess(List<SpecializationsData?> specializationList) {
    return  Column(
      
      children: [
        vericalSpace(13.h),
        SpecialityViewAll(specializationList),
      ],
    );
  }
}
