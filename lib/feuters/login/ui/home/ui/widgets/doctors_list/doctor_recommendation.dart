import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/style.dart';

class DoctorRecommendation extends StatelessWidget {
  const DoctorRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
     return   Row(
      
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommendation Doctor',
              style: TextStyles.font18Black700Weight,
            ),
            Text(
              'See All',
              style: TextStyles.font13BlueRegular,
            ),
          ],
        );
        
  }
}