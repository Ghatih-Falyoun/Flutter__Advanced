import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopArea extends StatelessWidget {
  TopArea(this.UserName, {super.key});
  String UserName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Hi, $UserName!",style: TextStyles.font18Black700Weight,),
            Text('How Are you Today?',style: TextStyles.font13GrayRegular,)
          ],
        ),
      CircleAvatar(
          radius: 24,
          backgroundColor: ( colorManager.openlightGray),
          child: SvgPicture.asset("assets/svgs/alert.svg"),
        )

      ],
    );
  }
}
