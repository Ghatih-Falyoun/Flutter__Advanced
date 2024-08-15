import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityViewAll extends StatelessWidget {
  const DoctorSpecialityViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: colorManager.openlightGray,
                    child: SvgPicture.asset(
                      "assets/svgs/general_speciality.svg",
                      fit: BoxFit.fill,
                      height: 40,
                      width: 40,
                    ),
                  ),
                  vericalSpace(8.h),
                  Text(
                    "Specialization",
                    style: TextStyles.font12DarkRegular,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
