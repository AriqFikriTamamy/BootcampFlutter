import 'package:flutter/material.dart';

void main() {
  runApp(const Quiz2());
}

class Quiz2 extends StatelessWidget {
  const Quiz2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 32),
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/Menu Icon.png'),
                      ),
                    ),
                    // image: Image.asset('assets/icons/Menu Icon.png'),
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 32),
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/Search Icon.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: Column(
            children: [
              // SizedBox(height: 17),
              const Row(
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontFamily: 'Telegraf',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                ],
              ),
              const SizedBox(height: 17),
              Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 76,
                            height: 76,
                            decoration: BoxDecoration(
                                color: const Color(0xff141E28).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.person_outline,
                              size: 50,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      width: 160,
                                      child: Text(
                                        'Profile settings',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff141E28),
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 160,
                                      child: Text(
                                        'Settings regarding your profile',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff141E28)
                                              .withOpacity(0.48),
                                        ),
                                        // maxLines: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Column(
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.arrow_circle_right_outlined,
                                  color: Colors.grey,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 76,
                            height: 76,
                            decoration: BoxDecoration(
                                color: const Color(0xff141E28).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.newspaper_outlined,
                              size: 50,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      width: 160,
                                      child: Text(
                                        'News settings',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff141E28),
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 160,
                                      child: Text(
                                        'Choose your favorite topics',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff141E28)
                                              .withOpacity(0.48),
                                        ),
                                        // maxLines: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Column(
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.arrow_circle_right_outlined,
                                  color: Colors.grey,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 76,
                            height: 76,
                            decoration: BoxDecoration(
                                color: const Color(0xff141E28).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.notifications_outlined,
                              size: 50,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      width: 160,
                                      child: Text(
                                        'Notifications',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff141E28),
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 160,
                                      child: Text(
                                        'When would you like to be notified',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff141E28)
                                              .withOpacity(0.48),
                                        ),
                                        // maxLines: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Column(
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.arrow_circle_right_outlined,
                                  color: Colors.grey,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 76,
                            height: 76,
                            decoration: BoxDecoration(
                                color: const Color(0xff141E28).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.folder_open_outlined,
                              size: 50,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      width: 160,
                                      child: Text(
                                        'Subscription',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff141E28),
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 160,
                                      child: Text(
                                        'Currently, you are in Starter Plan',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff141E28)
                                              .withOpacity(0.48),
                                        ),
                                        // maxLines: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Column(
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.arrow_circle_right_outlined,
                                  color: Colors.grey,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 17),
              const Row(
                children: [
                  Text(
                    'Others',
                    style: TextStyle(
                        fontFamily: 'Telegraf',
                        color: Colors.black,
                        fontSize: 26),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 76,
                              height: 76,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xff141E28).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.bug_report_outlined,
                                size: 50,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const SizedBox(
                                        width: 160,
                                        child: Text(
                                          'Bug Report',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff141E28),
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 160,
                                        child: Text(
                                          'Report bugs very easy',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff141E28)
                                                .withOpacity(0.48),
                                          ),
                                          // maxLines: 4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Column(
                              children: [
                                SizedBox(
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    color: Colors.grey,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
