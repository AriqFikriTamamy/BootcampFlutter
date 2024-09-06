import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas10/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GetStartedPage(),
    );
  }
}

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: GetStartedPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const GetStartedPage(),
      //   '/news.dart': (context) => const NewsHomePage()
      // },
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 86),
                  width: double.infinity,
                  height: 330,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Rectangle 1.png'))),
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  'Yuk, Membaca Bersama\nSanber News',
                  style: GoogleFonts.arimo(
                      fontSize: 21, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 21),
                const Text('Berita Terpercaya, Di Ujung Jari Anda',
                    style: TextStyle(fontSize: 15)),
                const Spacer(),
                SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const NewsHomePage()));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsHomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3498DB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text('Masuk',
                          style: GoogleFonts.arimo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    )),
                const SizedBox(height: 21),
                SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Color(0xff3498DB)),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text('Mendaftar',
                          style: GoogleFonts.arimo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff3498DB))),
                    )),
                // const SizedBox(height: 21),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Bottom Navigation Example',
//       home: BottomNavBar(),
//     );
//   }
// }

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentIndex = 0;

//   final List<Widget> _children = [
//     const HomePage(),
//     const SearchPage(),
//     const ProfilePage(),
//   ];

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Bottom Navigation Example')),
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: onTabTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Home Page'),
//     );
//   }
// }

// class SearchPage extends StatelessWidget {
//   const SearchPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Search Page'),
//     );
//   }
// }

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Profile Page'),
//     );
//   }
// }
