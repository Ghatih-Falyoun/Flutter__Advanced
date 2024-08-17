import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/style.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/specialization_list/specialitiy_list_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityViewAll extends StatefulWidget {
  final List<SpecializationsData?> specializationDatalist;
  SpecialityViewAll(this.specializationDatalist, {super.key});

  @override
  State<SpecialityViewAll> createState() =>
      _SpecialityViewAllState();
}

class _SpecialityViewAllState extends State<SpecialityViewAll> {
  var selectedSpecialLIzationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: widget.specializationDatalist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSpecialLIzationIndex = index;
                });
                context.read<HomeCubit>().getDoctorsList(
                    specializationId: widget.specializationDatalist[index]?.id);
              },
              child: SpecialityListViewItem(specializationsData:  widget.specializationDatalist[index],itemIndex: index,selectedIndex: selectedSpecialLIzationIndex,));
        },
      ),
    );
  }
}
