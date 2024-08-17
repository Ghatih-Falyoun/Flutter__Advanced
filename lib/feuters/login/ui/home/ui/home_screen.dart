import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_blue_container.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctor_list.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctor_recommendation.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctor_speciality_see_all.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/specialization_list/speciality_view_all.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/specialization_list/specializations_bloc_builder.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/top_area.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          children: [
            TopArea('Ghaith'),
            const DoctorsBlueContainer(),
            vericalSpace(24),
            const DoctorSpecialitySeeAll(),
            SpecializationsBlocBuilder(),
            //DoctorRecommendation(),
            vericalSpace(8),
            DoctorsBlocBuilder()
          ],
        ),
      )),
    );
  }

}
