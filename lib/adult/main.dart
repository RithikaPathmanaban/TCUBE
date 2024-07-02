import 'package:flutter/material.dart';
import 'package:kids_learning/adult/views/home_page.dart';
import 'package:kids_learning/grade3testing/views/home_page.dart';
// import 'package:kids_learning/kindergardertraining/views/home_page.dart';
// import 'package:kids_learning/grade1/views/home_page.dart';
// import 'package:kids_learning/views/home_page.dart';

// void main() {
//   runApp(MyApp());
// }

class adulttesting extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tcube',
      home: adulthome(),
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
