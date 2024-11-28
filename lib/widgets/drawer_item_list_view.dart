import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/drawer_model.dart';
import 'package:responsive_dash_bord/utlis/app_images.dart';
import 'package:responsive_dash_bord/widgets/custom_drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});
  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

int activeIndex = 0;

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesCategory2),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesConvertCard),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: CustomDarwerItem(
                  drawerItemModel: items[index],
                  isActive: activeIndex == index)),
        );
      },
    );
  }
}
