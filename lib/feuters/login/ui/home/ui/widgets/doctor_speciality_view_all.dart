import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctor_specialitiy_list_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityViewAll extends StatelessWidget {
  final List<SpecializationsData?> specializationDatalist;
  DoctorSpecialityViewAll(this.specializationDatalist, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: specializationDatalist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DoctorSpecialitiyListViewItem(index,specializationDatalist[index]);
        },
      ),
    );
  }
}
