import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_list.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_recommendation.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_speciality_view_all.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

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
          specializationsSuccess: (specializationsResponseModel) {
            var specializationList =
                specializationsResponseModel.specializationDataList;
            print(specializationList!.length);
            return setupSuccess(specializationList);
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
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setupSuccess(List<SpecializationsData?> specializationList) {
    return Expanded(
      child: Column(
        children: [
          vericalSpace(13.h),
          DoctorSpecialityViewAll(specializationList),
          DoctorRecommendation(),
          vericalSpace(13.h),
          DoctorList(doctorsList: specializationList.first?.doctorsList,),
        ],
      ),
    );
  }
}
