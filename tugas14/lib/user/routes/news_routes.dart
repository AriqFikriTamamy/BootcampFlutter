// import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tugas14/user/pages/get_started.dart';
import 'package:tugas14/user/pages/login_page.dart';
import 'package:tugas14/user/pages/news.dart';
import 'package:tugas14/user/pages/register_page.dart';
import 'package:tugas14/user/routes/news_route_named.dart';

class NewsRoutes {
  static final routes = [
    GetPage(
        name: NewsRoutesNamed.getStarted, page: () => const GetStartedPage()),
    GetPage(name: NewsRoutesNamed.login, page: () => const LoginPage()),
    GetPage(name: NewsRoutesNamed.register, page: () => const RegisterPage()),
    GetPage(name: NewsRoutesNamed.news, page: () => const NewsHomePage()),
  ];
}
