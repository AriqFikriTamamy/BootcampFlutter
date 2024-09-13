import 'package:get/get.dart';
import 'package:tugas13/user/model/user_model.dart';
import 'package:tugas13/user/service/user_service.dart';
// import 'package:tugas13/user/model/user_model.dart';

class UserController extends GetxController {
  List<UserModel> users = [];

  @override
  void onInit() {
    super.onInit();
    fetchdataUser();
  }

  Future<void> fetchdataUser() async {
    users = await UserService().fetchUser();
    update();
  }
}
