import 'package:first_project/Components/my_custom_button.dart';
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
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Team A", style: TextStyle(fontSize: 25)),
                        Text(
                          "$countA",
                          style: TextStyle(
                            fontSize: 70,
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
                        SizedBox(height: 12),

                        MyCustomButton(
                          string: 'Add 2 Point ',
                          onPressed: () {
                            setState(() {
                              countA += 2;
                            });
                          },
                        ),
                        SizedBox(height: 12),
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

                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.grey,
                    indent: 20,
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Team B", style: TextStyle(fontSize: 25)),
                        Text(
                          "$countB",
                          style: TextStyle(
                            fontSize: 70,
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
                        SizedBox(height: 12),

                        MyCustomButton(
                          string: 'Add 2 Point ',
                          onPressed: () {
                            setState(() {
                              countB += 2;
                            });
                          },
                        ),
                        SizedBox(height: 12),
                        MyCustomButton(
                          string: 'Add 3 Point ',
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

          SizedBox(height: 50),
          MyCustomButton(
            string: "Rest Counter",
            onPressed: () {
              setState(() {
                countA = 0;
                countB = 0;
              });
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
