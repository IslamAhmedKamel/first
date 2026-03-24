import 'package:first_project/Components/myCustomButton.dart'
    show MyCustomButton;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int countA = 0;
  int countB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Counter Points", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Spacer(flex: 1),

          Container(
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Team A", style: TextStyle(fontSize: 25)),
                        Text(
                          "$countA",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        MyCustomButton(
                          string: 'Add 1 Point ',
                          onPressed: () {
                            setState(() {
                              countA++;
                            });
                          },
                        ),

                        MyCustomButton(
                          string: 'Add 2 Point ',
                          onPressed: () {
                            setState(() {
                              countA += 2;
                            });
                          },
                        ),

                        MyCustomButton(
                          string: 'Add 3 Point ',
                          onPressed: () {
                            setState(() {
                              countA += 3;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),

                VerticalDivider(thickness: 2, color: Colors.orange),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Team B", style: TextStyle(fontSize: 25)),
                        Text(
                          "$countB",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        MyCustomButton(
                          string: 'Add 1 Point ',
                          onPressed: () {
                            setState(() {
                              countB++;
                            });
                          },
                        ),
                        MyCustomButton(
                          string: 'Add 2 Points ',
                          onPressed: () {
                            setState(() {
                              countB += 2;
                            });
                          },
                        ),
                        MyCustomButton(
                          string: 'Add 3 Points ',
                          onPressed: () {
                            setState(() {
                              countB += 3;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(flex: 1),

          MyCustomButton(
            string: "Rest Counter9",
            onPressed: () {
              setState(() {
                countA = 0;
                countB = 0;
              });
            },
          ),

          Spacer(flex: 3),
        ],
      ),
    );
  }
}
