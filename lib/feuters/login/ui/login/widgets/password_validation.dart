// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/style.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({
    Key? key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLenght,
  }) : super(key: key);
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLenght;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter", hasLowerCase),
        vericalSpace(2),
        buildValidationRow("At least 1 Uppercase letter", hasUpperCase),
        vericalSpace(2),
        buildValidationRow(
            "At least 1 Special Character", hasSpecialCharacters),
        vericalSpace(2),
        buildValidationRow("At least 1 Number ", hasNumber),
        vericalSpace(2),
        buildValidationRow("At least 8 character long", hasMinLenght),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: colorManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13blueRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color: hasValidated
                  ? colorManager.gray
                  : const Color.fromARGB(255, 44, 44, 44)),
        )
      ],
    );
  }
}
