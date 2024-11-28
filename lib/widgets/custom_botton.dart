import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.backColor, required this.textColor});
  final Color? backColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 0,
              backgroundColor: backColor ?? const Color(0xFF4DB7F2)),
          onPressed: () {},
          child: Text(
            "Send Money",
            style: AppStyle.styleSemiBold18.copyWith(color: textColor),
          )),
    );
  }
}
