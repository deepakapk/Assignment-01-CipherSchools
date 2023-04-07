import 'package:cipher/Screens/Courses_Screen.dart';
import 'package:cipher/Screens/Home_Screen.dart';
import 'package:cipher/Screens/My_Profile_Screen.dart';
import 'package:cipher/Screens/Trending_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const CoursesScreen(),
    const TrendingScreen(),
    const MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/cipher.png'),
                  radius: 17,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("CipherSchool",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.table_rows_rounded,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(),
    );
  }

  Container buildMyNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      height: 69,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 15.0,
                spreadRadius: 5.0,
                offset: Offset(
                  5.0,
                  5.0,
                ))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.home_filled,
                        color: Colors.orange,
                        size: 35,
                      )
                    : const Icon(
                        Icons.home_filled,
                        color: Colors.black,
                        size: 35,
                      ),
              ),
              pageIndex == 0
                  ? const Text(
                      'Home',
                      style: TextStyle(color: Colors.orange),
                    )
                  : const Text('Home'),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.my_library_books_rounded,
                        color: Colors.orange,
                        size: 35,
                      )
                    : const Icon(
                        Icons.my_library_books_rounded,
                        color: Colors.black,
                        size: 35,
                      ),
              ),
              pageIndex == 1
                  ? const Text(
                      'Courses',
                      style: TextStyle(color: Colors.orange),
                    )
                  : const Text('Courses'),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.explore_rounded,
                        color: Colors.orange,
                        size: 35,
                      )
                    : const Icon(
                        Icons.explore_rounded,
                        color: Colors.black,
                        size: 35,
                      ),
              ),
              pageIndex == 2
                  ? const Text(
                      'Trending',
                      style: TextStyle(color: Colors.orange),
                    )
                  : const Text('Trending'),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.person,
                        color: Colors.orange,
                        size: 35,
                      )
                    : const Icon(
                        Icons.person_outline,
                        color: Colors.black,
                        size: 35,
                      ),
              ),
              pageIndex == 3
                  ? const Text(
                      'My Profile',
                      style: TextStyle(color: Colors.orange),
                    )
                  : const Text('My Profile'),
            ],
          ),
        ],
      ),
    );
  }
}
