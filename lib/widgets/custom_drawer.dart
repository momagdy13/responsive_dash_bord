import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/drawer_model.dart';
import 'package:responsive_dash_bord/models/latest_trans_model.dart';
import 'package:responsive_dash_bord/utlis/app_images.dart';
import 'package:responsive_dash_bord/widgets/custom_drawer_item.dart';
import 'package:responsive_dash_bord/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_bord/widgets/user_info_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static LatestTransModel item = const LatestTransModel(
      email: 'demo@gmail.com', name: 'Lekan Okeowo', image: Assets.imagesAvtar);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoList(
              latestTransModel: item,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                  ),
                ),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSetting2)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
