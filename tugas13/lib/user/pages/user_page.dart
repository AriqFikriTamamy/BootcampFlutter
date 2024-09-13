import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas13/user/controller/user_controller.dart';
// import 'package:tugas13/user/model/user_model.dart';
import 'package:tugas13/user/pages/user_detail.dart';
// import 'package:tugas13/user/service/user_service.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('User Page'),
      ),
      body: GetBuilder<UserController>(
        builder: (data) => ListView.builder(
          itemCount: data.users.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  '${data.users[index].firstName} ${data.users[index].lastName}'),
              leading: Image.network(data.users[index].avatar),
              subtitle: Text(data.users[index].email),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailUserPage(userId: data.users[index].id),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
