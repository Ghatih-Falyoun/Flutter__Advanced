import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: const DecorationImage(
                    image: AssetImage('assets/images/doctor_background.png'),
                    fit: BoxFit.cover)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Book and\nschedule with\nnearest doctor',
                style: TextStyles.font18White600Weight,
                textAlign: TextAlign.start,
              ),
              vericalSpace(16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48),
                      )),
                  child: Text(
                    "Find Nearby",
                    style: TextStyles.font13BlueRegular,
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
            right: 16,
            child: Image.asset('assets/images/docc.png',height: 190.h,))
        ],
      ),
    );
  }
}
