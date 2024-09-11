import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
              // const CustomTextFormField(label: 'Masukkan Email'),
              // const CustomTextFormField(label: 'Password'),
              // const CustomTextFormField(label: 'Konfirmasi Password'),
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
                        final result = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);
                        print('User registered: ${result.user?.uid}');
                      } catch (e) {
                        print('Error $e');
                      }
                    }
                    // FirebaseAuth.instance.authStateChanges().listen(
                    //   (User? user) {
                    //     if (user != null) {
                    //       print(user.uid);
                    //     }
                    //   },
                    // );
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah punya akun? silahkan'),
                  Text(
                    ' masuk',
                    style: TextStyle(color: Color(0xff3498DB)),
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

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.controller,
      this.isPassword = false,
      this.validator});

  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        validator: validator,
        decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(color: Color(0xffC0C0C0)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC0C0C0)),
          ),
        ),
      ),
    );
  }
}
