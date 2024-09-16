import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screens/home_screen_controller.dart';
import '/constants/app_colors.dart';
import '/services/api_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.put(HomeScreenController());

    ApiHelper.getCurrentWeather();

    return Scaffold(
      body: Obx(() => controller.screens[controller.currentPageIndex.value]),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: AppColors.secondaryBlack,
        ),
        child: Obx(
          () => NavigationBar(
            selectedIndex: controller.currentPageIndex.value,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            indicatorColor: Colors.transparent,
            onDestinationSelected: controller.updatePageIndex,
            destinations: const [
              NavigationDestination(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
