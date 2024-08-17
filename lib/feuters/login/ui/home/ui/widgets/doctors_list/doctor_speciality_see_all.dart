import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/style.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Doctor Speciality',style: TextStyles.font18Black700Weight,),
            Text("See All",style: TextStyles.font13BlueSemiBold,)
          ],
        ),
        
      ],
    );
  }
}
