import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screens/search_screen_controller.dart';
import '/constants/app_colors.dart';
import '/constants/text_styles.dart';
import '/views/famous_cities_weather.dart';
import '/views/gradient_container.dart';
import '/widgets/round_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchScreenController controller = Get.put(SearchScreenController());

    return GradientContainer(
      children: [
        const Align(
          alignment: Alignment.center,
          child: Text('Pick Location', style: TextStyles.h1),
        ),
        const SizedBox(height: 20),
        const Text(
          'Find the area or city that you want to know the detailed weather info at this time',
          style: TextStyles.subtitleText,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            Expanded(
              child: RoundTextField(
                controller: controller.searchController,
                onChanged: (text) => controller.updateSearchText(text),
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: controller.onSearch,
              child: const LocationIcon(),
            ),
          ],
        ),
        const SizedBox(height: 30),
        const FamousCitiesWeather(),
      ],
    );
  }
}

class LocationIcon extends StatelessWidget {
  const LocationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        color: AppColors.accentBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.location_on_outlined,
        color: AppColors.grey,
      ),
    );
  }
}
