import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_bord/utlis/app_images.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(Assets.imagesCard)),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text('Name card',
                  style: AppStyle.styleRegular16.copyWith(
                    color: Colors.white,
                  )),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyle.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesConvertCard),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyle.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyle.styleRegular16
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 54 - 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
