import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
                  children: [
                    Text("Team A", style: TextStyle(fontSize: 25)),
                    Text(
                      "0",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(thickness: 2, color: Colors.orange),
                Column(
                  children: [
                    Text("Team B", style: TextStyle(fontSize: 25)),
                    Text(
                      "0",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(flex: 1),

          ElevatedButton(
            onPressed: () {},
            child: Text("Rest Counter", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
