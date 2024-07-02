import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/grade1training/views/home_page.dart';
// import 'package:kids_learning/Component/appBar.dart';
// import 'package:kids_learning/Component/card_screens.dart';
// import 'package:kids_learning/Controller/c_screenl.dart';

import '../Component/appBar.dart';
import '../Component/card_screens.dart';
import '../Controller/c_screenl.dart';

class g1Screen extends StatefulWidget {
  @override
  _g1State createState() => _g1State();
}

class _g1State extends State<g1Screen> {
  String imageView = 'assets/images/no.png';
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
                  context,
                  MaterialPageRoute(
                      builder: (context) => grade1trainHomePage()))),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ShowImage(image: imageView),
                  SizedBox(height: 3),
                  Expanded(
                      child: Column(
                    children: [
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImagemath.sub,
                            newAudio: PathAudiomath.sub),
                        onpressedBtn2: () => onClick(
                            newImage: PathImagemath.sub1,
                            newAudio: PathAudiomath.sub1),
                        onpressedBtn3: () => onClick(
                            newImage: PathImagemath.sub2,
                            newAudio: PathAudiomath.sub2),
                        title1: 'Sub',
                        title2: 'Sub\nStep1',
                        title3: 'Sub\nstep2',
                        btnColor2: Colors.pink,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImagemath.sub3,
                            newAudio: PathAudiomath.sub3),
                        onpressedBtn2: () => onClick(
                            newImage: PathImagemath.add1,
                            newAudio: PathAudiomath.add1),
                        onpressedBtn3: () => onClick(
                            newImage: PathImagemath.add2,
                            newAudio: PathAudiomath.add2),

                        //   onpressedBtn2: () => onClick(
                        //       newImage: PathImagesensory.knee,
                        //       newAudio: PathAudiosensory.knee),
                        //   onpressedBtn3: () => onClick(
                        //       newImage: PathImagesensory.hand,
                        //       newAudio: PathAudiosensory.hand),
                        title1: 'Sub\nstep3',
                        title2: 'Addition',
                        title3: 'Add',
                      )
                      //   title2: 'I WALK with my leg',
                      //   title3: 'I TOUCH with my hand',
                      //   btnColor2: Colors.pink,
                      // ),
                      // SizedBox(height: 2),
                      // ScreenRow(
                      //   onpressedBtn1: () => onClick(
                      //       newImage: PathImagesensory.tongue,
                      //       newAudio: PathAudiosensory.tongue),
                      //   onpressedBtn2: () => onClick(
                      //       newImage: PathImagesensory.knee,
                      //       newAudio: PathAudiosensory.knee),
                      //   onpressedBtn3: () => onClick(
                      //       newImage: PathImagesensory.elbow,
                      //       newAudio: PathAudiosensory.elbow),
                      //   title1: 'Tonuge',
                      //   title2: 'Knee',
                      //   title3: 'Elbow',
                      //   // title3: 'ببغاء',
                      //   btnColor2: Colors.pink,
                      // ),
                    ],
                  ))
                ],
              )),
        ));
  }

  void onClick({required String newImage, required String newAudio}) async {
    setState(() {
      imageView = newImage;
    });
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}
