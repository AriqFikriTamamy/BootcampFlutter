import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/route_manager.dart';
import 'package:tugas14/user/routes/news_route_named.dart';
// import 'package:tugas14/user/pages/login_page.dart';
import 'package:tugas14/user/widget/custom_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 352,
                  height: 330,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image_news_app.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      label: 'Masukkan Email',
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      label: 'Password',
                      controller: passwordController,
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                        label: 'Konfirmasi Password',
                        controller: confirmPasswordController,
                        isPassword: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Konfirmasi password tidak boleh kosong';
                          } else if (value != passwordController.text) {
                            return 'Password tidak cocok';
                          }
                          return null;
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: const Color(0xff3498DB)),
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      try {
                        // ignore: unused_local_variable
                        final result = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        Get.offNamed(NewsRoutesNamed.news);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'email-already-in-use') {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Email sudah terdaftar. Silahkan login',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                          Get.offNamed(NewsRoutesNamed.login);
                        } else {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Error: ${e.message}'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    }
                  },
                  child: const Text(
                    'Mendaftar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffC0C0C0),
                      height: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau daftar menggunakan',
                      style: TextStyle(color: Color(0xffC0C0C0)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xffC0C0C0),
                      height: 3,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/icon_google.png'),
                          ),
                        ),
                      ),
                      const Text('Google', style: TextStyle(color: Colors.red)),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun? silahkan'),
                  InkWell(
                    onTap: () {
                      Get.toNamed(NewsRoutesNamed.login);
                    },
                    child: const Text(
                      ' masuk',
                      style: TextStyle(color: Color(0xff3498DB)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
