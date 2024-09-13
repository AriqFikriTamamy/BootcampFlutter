import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas13/user/controller/user_detail_controller.dart';
// import 'package:tugas13/user/controller/user_detail_controller.dart';
// import 'package:tugas13/user/model/user_model.dart';
// import 'package:tugas13/user/service/user_service.dart';
// import 'package:tugas11/user/page/user_page.dart';

// class DetailUserPage extends StatefulWidget {
//   final int userId;
//   const DetailUserPage({super.key, required this.userId});

//   @override
//   State<DetailUserPage> createState() => _DetailUserPageState();
// }

// class _DetailUserPageState extends State<DetailUserPage> {
//   UserModel? user;
//   bool isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   getData() async {
//     isLoading = true;
//     user = await UserService().detailUser(widget.userId);
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detail User Page'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: isLoading
//             ? const Center(
//                 child: CircularProgressIndicator(),
//               )
//             : ListTile(
//                 title: Text('${user?.firstName} ${user?.lastName}'),
//                 leading: Image.network(user?.avatar ?? ''),
//                 subtitle: Text(user?.email ?? ''),
//               ),
//       ),
//     );
//   }
// }

class DetailUserPage extends StatelessWidget {
  final int userId;
  const DetailUserPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final userDetailController = Get.put(UserDetailController());
    userDetailController.getUserDetail(userId);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail User Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(() {
          if (userDetailController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (userDetailController.user.value == null) {
            return const Center(
              child: Text('User tidak ditemukan'),
            );
          } else {
            final user = userDetailController.user.value!;
            return ListTile(
              title: Text('${user.firstName} ${user.lastName}'),
              leading: Image.network(user.avatar),
              subtitle: Text(user.email),
            );
          }
        }),
      ),
    );
  }
}
