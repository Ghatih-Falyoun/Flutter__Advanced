import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/doctors_list/doctor_list_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorList extends StatelessWidget {
  List<Doctors?>? doctorsList;
  DoctorList( {super.key,this.doctorsList});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ListView.builder(
        itemCount: doctorsList?.length ,
        itemBuilder: (context, index) {
          return DoctorListItem(doctorsList?[index]);
        },
      ),
    );
  }
}
