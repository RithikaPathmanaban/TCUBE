import 'package:flutter/material.dart';
import 'package:kids_learning/detailspage/childetails.dart';
import 'package:kids_learning/detailspage/gradelist.dart';

import '../grade4testing/sensoryquiz/Quiz1.dart';

class underdevelopment extends StatefulWidget {
  const underdevelopment({Key? key}) : super(key: key);

  @override
  State<underdevelopment> createState() => _underdevelopmentState();
}

class _underdevelopmentState extends State<underdevelopment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => gradelist()),
          );
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.arrow_forward),
      ),
      body: Center(
        child: Image(image: AssetImage('assets/images/main.jpg')),
      ),

      // body: child(

      //   Image(image: AssetImage('assets/images/TCUBE.png'))
      // ),
    );
  }
}
// under develeopment