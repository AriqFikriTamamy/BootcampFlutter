// import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:snackbar/snackbar.dart';
import 'package:tugas13/user/model/user_model.dart';
import 'package:tugas13/user/service/user_service.dart';

class UserDetailController extends GetxController {
  var user = Rxn<UserModel>();
  var isLoading = false.obs;

  //Fetch data detail user menggunakan id
  void getUserDetail(int userId) async {
    isLoading(true);
    try {
      user.value = await UserService().detailUser(userId);
    } catch (e) {
      user.value = null;
      // Get.snackbar('Error', 'User tidak ditemukan');
    } finally {
      isLoading(false);
    }
  }
}
