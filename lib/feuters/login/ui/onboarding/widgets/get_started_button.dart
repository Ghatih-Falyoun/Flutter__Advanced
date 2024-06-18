import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/style.dart';

class GetStartedButton extends StatelessWidget {
  VoidCallback buttonpress;
  GetStartedButton(this.buttonpress,{super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed:  buttonpress ,
      child: Text('Get Started',style: TextStyles.font16WhitesemiBold,),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colorManager.mainblue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(Size(double.infinity,52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          )
        )
        ),
        
    );
  }
}