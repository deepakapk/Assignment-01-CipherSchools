import 'package:flutter/material.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  var colorss = [
    Colors.purple,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red
  ];
  var names = [1, 2, 3, 4, 5, 6];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 11,
            ),
            // 1st
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: colorss[index],
                    child: Text(names[index].toString()),
                  );
                },
                itemCount: names.length,
                // reverse: true,
                itemExtent: 400,
                scrollDirection: Axis.horizontal, //horizontal
              ),
            ),
            const SizedBox(
              height: 22,
            ),

            //2nd
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recomended Courses",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade700),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Popular',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),

            //3rd
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: colorss[index],
                    child: Column(children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.black,
                          )),
                      Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Web Development",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      backgroundColor: Colors.orange[50]),
                                ),
                                const Text("WEB DEVELOPMENT"),
                                const Text("No of Videos: 128"),
                                const Text("Course Time: 21.8 hours"),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CircleAvatar(),
                                      Column(
                                        children: const [
                                          Text('Deepak Baghel'),
                                          Text('Instructor'),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ]),
                  );
                },
                itemCount: names.length,
                // reverse: true,
                itemExtent: 200,
                scrollDirection: Axis.horizontal, //horizontal
              ),
            ),
          ],
        ),
      ),
    );
  }
}
