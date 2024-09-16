import 'package:get/get.dart';
import 'package:weather_app/screens/forecast_report_screen.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/screens/settings_screen.dart';
import 'package:weather_app/screens/weather_screen/weather_screen.dart';

class HomeScreenController extends GetxController {
  var currentPageIndex = 0.obs;

  final screens = [
    const WeatherScreen(),
    const SearchScreen(),
    const ForecastReportScreen(),
    const SettingsScreen(),
  ];

  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }
}
