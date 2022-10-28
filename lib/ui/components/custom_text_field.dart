import 'package:flutter/material.dart';

import 'package:save_pass/ui/colors.dart';
import 'package:save_pass/ui/text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.suffix,
    required this.controller,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Widget? suffix;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black800,
        borderRadius: borderRadius,
      ),
      child: TextFormField(
        cursorColor: AppColors.primary,
        style: AppTextStyle.bodyText1,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffix: suffix,
          hintText: hintText,
          hintStyle: AppTextStyle.bodyText1.copyWith(color: AppColors.gray500),
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
