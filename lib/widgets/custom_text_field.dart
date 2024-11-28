import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.title});
  final String hintText, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            title,
            style: AppStyle.styleSemiBold16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: TextField(
              decoration: InputDecoration(
                  fillColor: const Color(0xFFFAFAFA),
                  filled: true,
                  hintText: hintText,
                  hintStyle: AppStyle.styleRegular12,
                  border: buildBorder(),
                  focusedBorder: buildBorder(),
                  enabledBorder: buildBorder())),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFFAFAFA)));
  }
}
