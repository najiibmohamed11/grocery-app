import 'package:flutter/material.dart';
import 'package:flutter/painting.dart'; // Import for FontFeature

import 'package:add_to_cart/pages/homePage.dart';

class Initial_page extends StatelessWidget {
  const Initial_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Padding(
            padding:
                EdgeInsets.only(top: 120, left: 80, right: 80, bottom: 20.0),
            child: Image(
              image: AssetImage("images/avocado.png"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "we delivery the groceries at you doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 46.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Text("fresh items every day",
              style: TextStyle(color: Colors.grey)),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepPurple),
              child: const Text(
                "get start",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
