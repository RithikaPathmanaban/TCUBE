import 'package:flutter/material.dart';

import 'views/home_page.dart';

class age8to9 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tcube',
      home: HomePage1(),
    );
  }
}

// class background extends StatefulWidget {
//   const background({Key? key}) : super(key: key);

//   @override
//   State<background> createState() => _backgroundState();
// }

// class _backgroundState extends State<background> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: DecoratedBox(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/mainpage.jpg"), fit: BoxFit.cover),
//           ),
          
//         )
      
//         );
//   }
// }
