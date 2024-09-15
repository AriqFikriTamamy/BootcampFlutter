import 'package:flutter/material.dart';

import '/constants/app_colors.dart';
import '/constants/text_styles.dart';
import '/views/famous_cities_weather.dart';
import '/views/gradient_container.dart';
import '/widgets/round_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  void _onSearch() {
    final searchText = _searchController.text;
    if (searchText.isNotEmpty) {
      print('Searching for weather in: $searchText');
    } else {
      print('Search text is empty');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      children: [
        // Page title
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Pick Location',
            style: TextStyles.h1,
          ),
        ),

        const SizedBox(height: 20),

        // Page subtitle
        const Text(
          'Find the area or city that you want to know the detailed weather info at this time',
          style: TextStyles.subtitleText,
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 40),

        // Pick location row
        Row(
          children: [
            // Choose city text field
            Expanded(
              child: RoundTextField(
                controller: _searchController,
              ),
            ),
            const SizedBox(width: 15),

            GestureDetector(
              onTap: _onSearch,
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
