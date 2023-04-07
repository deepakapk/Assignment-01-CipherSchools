import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                // first colum
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: '  Welcome To  '),
                            TextSpan(
                                text: 'the\n',
                                style: TextStyle(
                                  color: Colors.orange,
                                )),
                            TextSpan(
                                text: 'Future ',
                                style: TextStyle(
                                  color: Colors.orange,
                                )),
                            TextSpan(
                              text: 'of Learning!',
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                //second colum
                Column(
                  children: const [
                    Text(
                      'Start Learning by best creators for',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "absolutely Free |",
                      style: TextStyle(color: Colors.orange, fontSize: 24),
                    )
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                // third column
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 40,
                                    child: Container(
                                      child: const CircleAvatar(
                                          backgroundColor: Colors.orange),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    child: Container(
                                      child: const CircleAvatar(
                                          backgroundColor: Colors.green),
                                    ),
                                  ),
                                  Container(
                                    child: const CircleAvatar(
                                        backgroundColor: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: const [
                                Text(
                                  '50+',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '    Mentors',
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                            const VerticalDivider(),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      "4.8/5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Icon(
                                          Icons.star_half_outlined,
                                          color: Colors.orange,
                                        ),
                                        Text("Ratings")
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                // fourth column
                Column(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Start Learning Now",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                // fifth column
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.3,
                              color: Colors.green,
                            ),
                          ),
                          Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.3,
                              color: Colors.yellow,
                            ),
                          ),
                          Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.3,
                              color: Colors.red,
                            ),
                          ),
                          Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.3,
                              color: Colors.blue,
                            ),
                          ),
                          Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.3,
                              color: Colors.orange,
                            ),
                          ),
                          Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.3,
                              color: Colors.purple,
                            ),
                          ),
                          Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.3,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
