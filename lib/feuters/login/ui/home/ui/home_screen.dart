import 'package:flutter/material.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/widgets/top_area.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12),
          child: Column(
            children: [
              TopArea('Ghaith')
            ],
          ),
        )),
    );
  }
}