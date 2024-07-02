import 'package:flutter/material.dart';
import 'package:kids_learning/detailspage/childetails.dart';

import '../../grade4testing/sensoryquiz/Quiz1.dart';

class underdev1test extends StatefulWidget {
  const underdev1test({Key? key}) : super(key: key);

  @override
  State<underdev1test> createState() => _underdev1testState();
}

class _underdev1testState extends State<underdev1test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => sensoryQuze()),
          );
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.arrow_forward),
      ),
      body: Center(
        child: Image(image: AssetImage('assets/images/main.png')),
      ),

      // body: child(

      //   Image(image: AssetImage('assets/images/TCUBE.png'))
      // ),
    );
  }
}
// under develeopment