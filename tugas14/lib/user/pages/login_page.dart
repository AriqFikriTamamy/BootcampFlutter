import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/route_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tugas14/user/routes/news_route_named.dart';
// import 'package:tugas14/user/pages/register_page.dart';
import 'package:tugas14/user/widget/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        Get.offNamed(NewsRoutesNamed.news);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Akun tidak ditemukan'),
                                content: const Text(
                                    'Email tidak ditemukan, Apakah anda ingin mendaftar?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Tidak'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Get.toNamed(NewsRoutesNamed.register);
                                    },
                                    child: const Text('Ya, Daftar'),
                                  )
                                ],
                              );
                            },
                          );
                        } else if (e.code == 'wrong-password') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Passwoord salah. Coba lagi'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Error: Email atau Password salah'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    }
                  },
                  child: const Text(
                    'Masuk',
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
                      'Atau masuk menggunakan',
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
                  onPressed: () async {
                    try {
                      final GoogleSignInAccount? googleUser =
                          await GoogleSignIn().signIn();

                      if (googleUser == null) {
                        return;
                      }

                      final GoogleSignInAuthentication googleAuth =
                          await googleUser.authentication;

                      final OAuthCredential credential =
                          GoogleAuthProvider.credential(
                        accessToken: googleAuth.accessToken,
                        idToken: googleAuth.idToken,
                      );

                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .signInWithCredential(credential);

                      // ignore: avoid_print
                      print(
                          'User signed in: ${userCredential.user?.displayName}');
                    } catch (e) {
                      // ignore: avoid_print
                      print('Error signing in with Gooogle: $e');
                    }
                    Get.offNamed(NewsRoutesNamed.news);
                  },
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
                  const Text('Belum punya akun? silahkan'),
                  InkWell(
                    onTap: () {
                      Get.toNamed(NewsRoutesNamed.register);
                    },
                    child: const Text(
                      ' daftar',
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

// ignore: unused_element
Future<void> _handleGoogleSignIn() async {
  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  try {
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      // ignore: avoid_print
      print('Google sign-in successful');
    }
  } catch (error) {
    // ignore: avoid_print
    print('Google sign-in error: $error');
  }
}
