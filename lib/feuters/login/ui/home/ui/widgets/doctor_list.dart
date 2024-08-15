import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
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
                        color: const Color.fromARGB(255, 138, 139, 148)),
                  ),
                  horizontalSpace(16.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Doctor Name',
                        style: TextStyles.font18Black700Weight
                            .copyWith(fontSize: 16),
                      ),
                      Text('Specialization'),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber[600]),
                          Text("4.5"),
                          horizontalSpace(4),
                          Text("(3,234 reviews)"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
      //  )
      // ],
    );
  }
}
