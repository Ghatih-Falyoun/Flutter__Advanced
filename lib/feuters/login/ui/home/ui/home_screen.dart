import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_blue_container.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_list.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_recommendation.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_speciality_view_all.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/top_area.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12),
          child: Column(
            children: [
              TopArea('Ghaith'),
              DoctorsBlueContainer(),
              vericalSpace(24.h),
              DoctorSpecialitySeeAll(),
              vericalSpace(13.h),
              DoctorSpecialityViewAll(),
              DoctorRecommendation(),
              vericalSpace(13.h),
              DoctorList(),
            ],
          ),
        )),
    );
  }
}