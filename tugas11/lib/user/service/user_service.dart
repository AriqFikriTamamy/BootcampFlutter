import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
import 'package:tugas11/user/model/user_model.dart';

class UserService {
  Dio dio = Dio();
  static const url = 'https://reqres.in/api/users?page=2';

  Future<List<UserModel>> fetchUser() async {
    final response = await dio.get(url);

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UserModel> users =
            List.from(data.map((user) => UserModel.fromJson(user)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> detailUser(int id) async {
    String urlSingle = 'https://reqres.in/api/users/$id';
    final responseSingle = await dio.get(urlSingle);

    try {
      if (responseSingle.statusCode == 200 ||
          responseSingle.statusCode == 201) {
        final data = responseSingle.data['data'];
        // List<UserModel> user = List.from(data.map((userId) => UserModel.fromJson(userId)));
        return UserModel.fromJson(data);
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
