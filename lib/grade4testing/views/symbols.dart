import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/grade4testing/views/equal.dart';
import 'package:kids_learning/grade4testing/views/lesser.dart';
// import 'package:kids_learning/Component/card_screen_Alphabet.dart';
import '../Component/appBar.dart';
import '../Component/card_screen_Alphabet.dart';
// import '/Component/appBar.dart';

import '../Controller/c_screenl.dart';
import '../mathsquiz/Quiz1.dart';
import 'greater.dart';
import 'home_page.dart';

class symbols1 extends StatefulWidget {
  @override
  _symbols1State createState() => _symbols1State();
}

class _symbols1State extends State<symbols1> {
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 170, 110),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150),
                bottomLeft: Radius.circular(150))),
        title: Text(
          'Mathematics',
          style: TextStyle(
            fontStyle: FontStyle.italic, fontSize: 30,
            //  shadows: [
            // Shadow(
            // offset: Offset(1.5, 1.5),
            color: Colors.white,

            //   blurRadius: 3,
            // )
            // ]
          ),
        ),
        centerTitle: true,
        // actions: [
        //   //app icon
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Icon(Icons.arrow_back_ios)
        //   )
        // ],
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage1()))),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Column(
            children: [
              Text(
                'Tap the images',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => greater1()));
                      // onClick(newAudio: PathAudiosymbols.symbol1);
                      // showDialog(
                      //   context: context,
                      //   builder: (ctx) => AlertDialog(
                      //     title: Center(
                      //       child: Row(
                      //         children: [
                      //           Text(
                      //             "  GREATER THAN",
                      //             style: TextStyle(
                      //                 color: Colors.red,
                      //                 fontWeight: FontWeight.bold,
                      //                 fontSize: 30),
                      //             textAlign: TextAlign.justify,
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     actions: <Widget>[
                      //       Container(
                      //         color: Colors.white,
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Text(
                      //               'If the symbol\'s mouth is\nexpanded to the right side,\nthen it is greater than symbol.\nFor example 5 is greater\nthan 2 ,so 5 > 2',
                      //               style: TextStyle(
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize: 15),
                      //               textAlign: TextAlign.center,
                      //             ),
                      //           ],
                      //         ),
                      //       )
                      //     ],
                      //   ),
                    }),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      height: 200,
                      width: 200,
                      child: Image(
                        image: AssetImage('assets/images/symbol1.png'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => lesser1()));
                      // onClick(newAudio: PathAudiosymbols.symbol2);
                      // showDialog(
                      //   context: context,
                      //   builder: (ctx) => AlertDialog(
                      //     title: Center(
                      //       child: Row(
                      //         children: [
                      //           Text(
                      //             "   LESSER THAN",
                      //             style: TextStyle(
                      //                 color: Colors.red,
                      //                 fontWeight: FontWeight.bold,
                      //                 fontSize: 30),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     actions: <Widget>[
                      //       Container(
                      //         color: Colors.white,
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Text(
                      //               'If the symbol\'s mouth is\nexpanded to the left side,\nthen it is lesser than symbol.\nFor example 2 is lesser\nthan 5 ,so 2 < 5',
                      //               style: TextStyle(
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize: 15),
                      //               textAlign: TextAlign.center,
                      //             ),
                      //           ],
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // );
                    }),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      height: 200,
                      width: 200,
                      child: Image(
                        image: AssetImage('assets/images/symbol2.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => equal1()));
                      // onClick(newAudio: PathAudiosymbols.symbol3);
                      // showDialog(
                      //   context: context,
                      //   builder: (ctx) => AlertDialog(
                      //     title: Center(
                      //       child: Row(
                      //         children: [
                      //           Text(
                      //             "     EQUAL TO",
                      //             style: TextStyle(
                      //                 color: Colors.red,
                      //                 fontWeight: FontWeight.bold,
                      //                 fontSize: 30),
                      //             textAlign: TextAlign.center,
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     actions: <Widget>[
                      //       Container(
                      //         color: Colors.white,
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Text(
                      //               'If two numbers are same\nthen use equal to symbol.\nFor example 2 = 2.',
                      //               style: TextStyle(
                      //                   fontWeight: FontWeight.bold,
                      //                   fontSize: 15),
                      //               textAlign: TextAlign.center,
                      //             ),
                      //           ],
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // );
                    }),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                      height: 200,
                      width: 200,
                      child: Image(
                        image: AssetImage('assets/images/symbol3.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // SizedBox(
          //   height: 5,
          // ),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioton.ton5),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioton.ton6),
          //   image1: Image.asset(
          //     'assets/images/ton5.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/ton6.png',
          //   ),
          // ),

          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.i),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.j),
          //   image1: Image.asset(
          //     'assets/images/i1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/j1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.k),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.l),
          //   image1: Image.asset(
          //     'assets/images/k1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/l1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.m),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.n),
          //   image1: Image.asset(
          //     'assets/images/m1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/n1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.o),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.p),
          //   image1: Image.asset(
          //     'assets/images/o1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/p1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.q),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.r),
          //   image1: Image.asset(
          //     'assets/images/q1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/r1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.s),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.t),
          //   image1: Image.asset(
          //     'assets/images/s1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/t1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.u),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.v),
          //   image1: Image.asset(
          //     'assets/images/u1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/v1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.w),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.x),
          //   image1: Image.asset(
          //     'assets/images/w1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/x1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.y),
          //   onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.z),
          //   image1: Image.asset(
          //     'assets/images/y1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/z1.png',
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mathQuze()),
                );
              },
              child: Text('Parent Test'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 243, 170, 110),
                side: BorderSide(
                  color: Color.fromARGB(255, 246, 133, 13),
                  width: 1,
                ),
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontStyle: FontStyle.normal),
              ),
            ),
          )
        ]),
      )),
    );
  }

  void onClick({
    required String newAudio,
  }) async {
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}
