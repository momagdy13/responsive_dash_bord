import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_bord/models/latest_trans_model.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';

class UserInfoList extends StatelessWidget {
  const UserInfoList({
    super.key,
    required this.latestTransModel,
  });

  final LatestTransModel latestTransModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: const Color(0xFFFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(latestTransModel.image),
          title: Text(
            latestTransModel.name,
            style: AppStyle.styleSemiBold16,
          ),
          subtitle: Text(
            latestTransModel.email,
            style: AppStyle.styleRegular12,
          ),
        ),
      ),
    );
  }
}
