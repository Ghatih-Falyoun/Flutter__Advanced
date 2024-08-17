import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListItem extends StatelessWidget {
  Doctors? doctorsModel;
  DoctorListItem(this.doctorsModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
                height: 110.w,
                width: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 138, 139, 148),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  
                )),
            horizontalSpace(16.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? '',
                  style: TextStyles.font18Black700Weight.copyWith(fontSize: 16),
                ),
                Text('${doctorsModel?.degree} | ${doctorsModel?.phone}'),
                Row(
                  children: [
                    Text("${doctorsModel?.email}"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
