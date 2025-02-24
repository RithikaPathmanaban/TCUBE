import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/grade4training/views/home_page.dart';
// import 'package:kids_learning/Component/appBar.dart';
// import 'package:kids_learning/Component/card_screens.dart';
// import 'package:kids_learning/Controller/c_screenl.dart';

import '../Component/appBar.dart';
import '../Component/card_screens.dart';
import '../Controller/c_screenl.dart';

class AnimalScreen extends StatefulWidget {
  @override
  _AnimalScreenState createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  String imageView = 'assets/images/animals.jpg';
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
            'Animals',
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
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ShowImage(image: imageView),
                  SizedBox(height: 2),
                  Expanded(
                      child: Column(
                    children: [
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImageAnimal.dogIm,
                            newAudio: PathAudioAnimal.dog),
                        onpressedBtn2: () => onClick(
                            newImage: PathImageAnimal.catIm,
                            newAudio: PathAudioAnimal.cat),
                        onpressedBtn3: () => onClick(
                            newImage: PathImageAnimal.lionIm,
                            newAudio: PathAudioAnimal.lion),
                        title1: 'كلب',
                        title2: 'قطة',
                        title3: 'أسد',
                        btnColor2: Colors.pink,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImageAnimal.elephantIm,
                            newAudio: PathAudioAnimal.elephant),
                        onpressedBtn2: () => onClick(
                            newImage: PathImageAnimal.goatIm,
                            newAudio: PathAudioAnimal.goat),
                        onpressedBtn3: () => onClick(
                            newImage: PathImageAnimal.wolfIm,
                            newAudio: PathAudioAnimal.wolf),
                        title1: 'فيل',
                        title2: 'ماعز',
                        title3: 'ذئب',
                        btnColor2: Colors.pink,
                      ),
                      SizedBox(height: 2),
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImageAnimal.horsIm,
                            newAudio: PathAudioAnimal.horse),
                        onpressedBtn2: () => onClick(
                            newImage: PathImageAnimal.henIm,
                            newAudio: PathAudioAnimal.hen),
                        onpressedBtn3: () => onClick(
                            newImage: PathImageAnimal.parrotIm,
                            newAudio: PathAudioAnimal.parrot),
                        title1: 'حصان',
                        title2: 'دجاجة',
                        title3: 'ببغاء',
                        btnColor2: Colors.pink,
                      ),
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
