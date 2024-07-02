import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/grade1testing/views/home_page.dart';
// import 'package:kids_learning/kindergardentesting/readingquize/Quiz1.dart';
// import 'package:kids_learning/kindergardentesting/readingquize/quizbanner.dart';
// import 'package:kids_learning/Component/card_screen_Alphabet.dart';
import '../Component/appBar.dart';
import '../Component/card_screen_Alphabet.dart';
// import '/Component/appBar.dart';

import '../Controller/c_screenl.dart';
import '../quize/Quiz1.dart';

class grade1test extends StatefulWidget {
  @override
  _grade1testState createState() => _grade1testState();
}

class _grade1testState extends State<grade1test> {
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
          'Phonics',
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
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => grade1testhome()))),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.a),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.b),
            image1: Image.asset(
              'assets/images/1.jpg',
            ),
            image2: Image.asset(
              'assets/images/2.jpg',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.c),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.d),
            image1: Image.asset(
              'assets/images/3.jpg',
            ),
            image2: Image.asset(
              'assets/images/4.jpg',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.e),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.f),
            image1: Image.asset(
              'assets/images/5.jpg',
            ),
            image2: Image.asset(
              'assets/images/6.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.g),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.h),
            image1: Image.asset(
              'assets/images/7.jpg',
            ),
            image2: Image.asset(
              'assets/images/8.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.i),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.j),
            image1: Image.asset(
              'assets/images/9.jpg',
            ),
            image2: Image.asset(
              'assets/images/10.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.k),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.l),
            image1: Image.asset(
              'assets/images/11.jpg',
            ),
            image2: Image.asset(
              'assets/images/12.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.m),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.n),
            image1: Image.asset(
              'assets/images/13.jpg',
            ),
            image2: Image.asset(
              'assets/images/14.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.o),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.p),
            image1: Image.asset(
              'assets/images/15.jpg',
            ),
            image2: Image.asset(
              'assets/images/16.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () {},
            onpressedBtn2: () {},
            // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.q),
            // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.r),
            image1: Image.asset(
              'assets/images/17.jpg',
            ),
            image2: Image.asset(
              'assets/images/18.jpg',
            ),
          ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () {},
          //   onpressedBtn2: () {},
          //   // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.s),
          //   // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.t),
          //   image1: Image.asset(
          //     'assets/images/17.jpg',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/18.jpg',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () {},
          //   onpressedBtn2: () {},
          //   // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.u),
          //   // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.v),
          //   image1: Image.asset(
          //     'assets/images/u1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/v1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () {},
          //   onpressedBtn2: () {},
          //   // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.w),
          //   // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.x),
          //   image1: Image.asset(
          //     'assets/images/w1.png',
          //   ),
          //   image2: Image.asset(
          //     'assets/images/x1.png',
          //   ),
          // ),
          // SizedBox(height: 5),
          // ScreenRowAlphabet(
          //   onpressedBtn1: () {},
          //   onpressedBtn2: () {},
          //   // onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.y),
          //   // onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.z),
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
                  MaterialPageRoute(builder: (context) => phonicsquiz()),
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
