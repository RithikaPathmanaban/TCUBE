import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_learning/adult/main.dart';
import 'package:kids_learning/detailspage/adult.dart';
import 'package:kids_learning/detailspage/t3.dart';
import 'package:kids_learning/detailspage/t3grade1.dart';
import 'package:kids_learning/detailspage/t3grade2.dart';
import 'package:kids_learning/detailspage/t3grade3.dart';
import 'package:kids_learning/detailspage/t4.dart';
import 'package:kids_learning/detailspage/underdevelopment.dart';
import 'package:kids_learning/grade1testing/views/undertest1.dart';

import 'login.dart';
// import 'package:tcube/childetails.dart';
// import 'package:tcube/login.dart';

class gradelist extends StatefulWidget {
  // const gradelist({super.key});

  @override
  State<gradelist> createState() => _gradelistState();
}

class _gradelistState extends State<gradelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: DecoratedBox(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/mainpic.jpg'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'SELECT GRADE',
                    // style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 50,
                    //     fontWeight: FontWeight.w700),
                    style: GoogleFonts.abel(
                        fontSize: 40, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(40)),
                //       backgroundColor: Colors.white),
                //   onPressed: () => Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => loginpage())),
                //   child: Container(
                //       width: 200,
                //       height: 50,
                //       child: Center(
                //           child: Text(
                //         'Pre School Age(3-4)',
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             fontSize: 15,
                //             color: Colors.black),
                //       ))),
                // ),
                // Divider(
                //   color: Color(0xffd5f0fe),
                // ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)), backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 63, 205, 245), width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                  // style: ElevatedButton.styleFrom(
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(40)),
                  //     backgroundColor: Colors.white),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Testtraintrack())),
                  child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                          child: Text(
                        'Kinder Garden Age(4-5)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)), backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 63, 205, 245), width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Testtraintrackgrade1())),
                  child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                          child: Text(
                        'Grade 1 Age(6-7)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)), backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 63, 205, 245), width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => underdevelopment())),
                  child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                          child: Text(
                        'Grade 2 Age(7-8)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)), backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 63, 205, 245), width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Testtraintrackgrade3())),
                  child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                          child: Text(
                        'Grade 3 Age(8-9)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)), backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 63, 205, 245), width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Testtraintrack4())),
                  child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                          child: Text(
                        'Grade 4 Age(9-10)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)), backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 63, 205, 245), width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => underdevelopment())),
                  child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                          child: Text(
                        'Grade 5 Age(10-11)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)), backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 63, 205, 245), width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => underdevelopment())),
                  child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                          child: Text(
                        'Grade 6 Age(11-12)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)), backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 63, 205, 245), width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => adultTesttraintrack())),
                  child: Container(
                      width: 200,
                      height: 50,
                      child: Center(
                          child: Text(
                        'Adult',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
