import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:kids_learning/Component/card_screen_Alphabet.dart';
import '../Component/appBar.dart';
import '../Component/card_screen_Alphabet.dart';
// import '/Component/appBar.dart';

import '../Controller/c_screenl.dart';
import 'home_page.dart';

class tonguetwister extends StatefulWidget {
  @override
  _tonguetwisterState createState() => _tonguetwisterState();
}

class _tonguetwisterState extends State<tonguetwister> {
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
          'Tongue Twister',
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
                context,
                MaterialPageRoute(
                    builder: (context) => grade3trainhomepage()))),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioton.ton1),
            onpressedBtn2: () => onClick(newAudio: PathAudioton.ton2),
            image1: Image.asset(
              'assets/images/ton1.png',
            ),
            image2: Image.asset(
              'assets/images/ton2.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioton.ton3),
            onpressedBtn2: () => onClick(newAudio: PathAudioton.ton4),
            image1: Image.asset(
              'assets/images/ton3.png',
            ),
            image2: Image.asset(
              'assets/images/ton4.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioton.ton5),
            onpressedBtn2: () => onClick(newAudio: PathAudioton.ton6),
            image1: Image.asset(
              'assets/images/ton5.png',
            ),
            image2: Image.asset(
              'assets/images/ton6.png',
            ),
          ),

          SizedBox(height: 5),
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
