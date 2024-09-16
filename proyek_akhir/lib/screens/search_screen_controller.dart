import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  var searchText = ''.obs;
  late final TextEditingController searchController;

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  void onSearch() {
    if (searchText.isNotEmpty) {
      print('Searching for weather in: ${searchText.value}');
    } else {
      print('Search text is empty');
    }
  }

  void updateSearchText(String text) {
    searchText.value = text;
  }
}
