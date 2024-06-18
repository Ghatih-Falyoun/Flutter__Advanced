import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/feuters/login/ui/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.05, 0.8]),
          ),
          child: Image.asset(
            'assets/images/onboarding_doctor.png',
            width: 375.w,
            height: 520.h,
          ),
        ),
        Positioned(bottom: 30,left: 0,right: 0,
        child: Text('Best Doctor\n Appointment App',textAlign: TextAlign.center,style: TextStyles.font32BlueBold.copyWith(height: 1.4),),),
        SizedBox(height: 30.h,),
        
      ],
    );
  }
}
