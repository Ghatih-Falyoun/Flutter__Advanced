import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialitiyListViewItem extends StatelessWidget {
  final int itemIndex;
  final SpecializationsData? specializationsData;
  DoctorSpecialitiyListViewItem(this.itemIndex,this.specializationsData,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: itemIndex == 0 ? 0 : 24.w),
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
              specializationsData?.name ?? 'Specialization',
              style: TextStyles.font12DarkRegular,
            )
          ],
        ),
      ),
    );
  }
}
