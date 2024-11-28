import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.color,
    @required this.imgColor,
  });
  final String image;
  final Color? color, imgColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(shape: const OvalBorder(), color: color),
          child: Center(child: SvgPicture.asset(image, color: imgColor)),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xff064061),
            ))
      ],
    );
  }
}
