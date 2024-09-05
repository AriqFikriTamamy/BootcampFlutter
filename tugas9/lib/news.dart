import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:tugas9/model/news_model.dart';
// import 'package:tugas9/widget/custom_box_image.dart';

// void main() {
//   runApp(NewsPage());
// }

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 360,
              height: 360,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Bg Image.png'),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 32),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Nav Bar.png'))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Container(
                    // margin: EdgeInsets.only(left: 32),
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Avatar.png'),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: const Text('Samuel Newtor'),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 32),
              child: Row(
                children: [
                  Text('TECHNOLOGY',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff141E28).withOpacity(0.48),
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                        'To build responsibly, tech needs to do more than just hire chief ethics officers',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff141E28),
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 18),
              child: Row(
                children: [
                  SizedBox(
                    child: Text(
                      '17 June 2023 -- 4:49 PM',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff141E28).withOpacity(0.48),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 18),
              child: Row(
                children: [
                  SizedBox(
                    child: Text(
                      'In the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digital well-being, AI ethics or humane use. Whatever their titles, these individuals are given the task of “leading” ethics at their companies.',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff141E28),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class NewsHomePage extends StatelessWidget {
//   const NewsHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CustomBoxImage(
//                 urlImage: 'assets/images/Menu Icon.png',
//                 width: 40,
//                 height: 40,
//               ),
//               Text(
//                 'NewsApp',
//                 style: GoogleFonts.poppins(
//                     fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(),
//             ],
//           ),
//         ),
//         body: Column(
//           children: [
//             SizedBox(
//               height: 311,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 3,
//                 itemBuilder: (context, index) => CustomBoxImage(
//                   margin: EdgeInsets.only(top: 32, left: index == 0 ? 30 : 0),
//                   padding: const EdgeInsets.all(24),
//                   urlImage: 'assets/images/News.png',
//                   width: 311,
//                   height: 311,
//                   child: Stack(
//                     children: [
//                       Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('TECHNOLOGY',
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 12,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold)),
//                               Text('3 min ago',
//                                   style: GoogleFonts.poppins(
//                                       fontSize: 12, color: Colors.white)),
//                             ],
//                           ),
//                           const Spacer(),
//                           Text(
//                               'Microsoft launches a deepfake detector tool ahead of US election',
//                               style: GoogleFonts.poppins(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold)),
//                           const SizedBox(height: 24),
//                           Row(
//                             children: [
//                               CustomBoxImage(
//                                 urlImage:
//                                     'assets/images/chatbubble-ellipses-outline.png',
//                                 width: 20,
//                                 height: 20,
//                               ),
//                               CustomBoxImage(
//                                 margin: const EdgeInsets.only(left: 24),
//                                 urlImage: 'assets/images/bookmark-outline.png',
//                                 height: 20,
//                                 width: 20,
//                               ),
//                               const Spacer(),
//                               CustomBoxImage(
//                                 urlImage:
//                                     'assets/images/arrow-redo-outline.png',
//                                 width: 20,
//                                 height: 20,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Latest News',
//                     style: GoogleFonts.poppins(
//                         fontSize: 14,
//                         color: const Color(0xff111E29).withOpacity(0.48)),
//                   ),
//                   Icon(Icons.arrow_circle_right_outlined,
//                       color: const Color(0xff111E29).withOpacity(0.48)),
//                 ],
//               ),
//             ),
//             ListView.builder(
//               padding: const EdgeInsets.only(left: 30, right: 30),
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               // scrollDirection: Axis.vertical,
//               itemCount: news.length,
//               itemBuilder: (context, index) => Column(
//                 children: [
//                   const SizedBox(height: 23),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomBoxImage(
//                         urlImage: news[index].url,
//                         width: 100,
//                         height: 100,
//                       ),
//                       const SizedBox(width: 24),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               news[index].title,
//                               style: GoogleFonts.poppins(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold,
//                                   color: const Color(0xff141E48)
//                                       .withOpacity(0.48)),
//                             ),
//                             Text(
//                               news[index].subTitle,
//                               style: GoogleFonts.poppins(
//                                   fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
