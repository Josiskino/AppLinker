import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'add_app_page.dart';
import 'bonus_page.dart';
import 'custom_bottom_navigationBar/custom_bottom_app_bar.dart';
import 'home_page.dart';
import 'integration_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTab = 0;
  
  final List<Widget> screens = [
    const HomePage(),
    const AddAppPage(),
    const IntegrationPage(),
    const BonusPage(),
  ];

  void onTabSelected(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(
        unSelectedColor: Colors.grey.shade400,
        selectedColor: Theme.of(context).colorScheme.primary,
        onTap: onTabSelected,
        selectedTab: currentTab,
        children: const [
          CustomBottomAppBarItem(
            icon: Iconsax.home,
            text: "Home",
          ),
          CustomBottomAppBarItem(
            icon: Iconsax.link,
            text: "ConnectApp",
          ),
          CustomBottomAppBarItem(
            icon: Iconsax.shapes,
            text: "Integrations",
          ),
          CustomBottomAppBarItem(
            icon: Iconsax.gift,
            text: "Bonus",
          ),
        ],
      ),
      body: screens[currentTab],
    );
  }
}