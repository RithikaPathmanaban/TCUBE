import 'dart:collection';
// import 'package:kids_learning/Model/m_learn.dart';
// import 'package:kids_learning/grade1/views/sensory.dart';
// import 'package:kids_learning/memory/main.dart';
// import 'package:kids_learning/views/Alphabet_Screen.dart';
// import 'package:kids_learning/views/Animal_Screen.dart';
// import 'package:kids_learning/views/alphabet_Screen2.dart';
// import 'package:kids_learning/views/colors_screen.dart';
// import 'package:kids_learning/views/number_screen.dart';
// import 'package:kids_learning/views/sensory.dart';

// import '../../views/Animal_Screen.dart';
import 'package:kids_learning/detailspage/underdevelopment.dart';
// import 'package:kids_learning/grade1training/views/underdev.dart';

import '../Model/m_learn.dart';
import '../memory/main.dart';
import '../views/Animal_Screen.dart';
import '../views/alphabet_Screen2.dart';
import '../views/colors_screen.dart';
import '../views/number_screen.dart';
import '../views/sensory.dart';

class ControllerLearn {
  static List<ModelLearn> _dataLearn = [
    // ModelLearn(
    //   image: 'assets/images/arabica.png',
    //   title: 'تعلم الحروف',
    //   page: AlphabetScreen(),
    // ),
    ModelLearn(
      title: 'Reading',
      image: 'assets/images/reading.png',
      page: grad1read(),
    ),
    // ModelLearn(
    //   title: 'Mathematics',
    //   image: 'assets/images/alphabet.png',
    //   page: AlphabetScreen1(),
    // ),
    ModelLearn(
      title: 'Mathematics',
      image: 'assets/images/no.png',
      page: g1Screen(),
    ),

    ModelLearn(
      title: 'memory',
      image: 'assets/images/memory.png',
      page: memory1(),
    ),

    ModelLearn(
      title: 'sensory abilities',
      image: 'assets/images/sensory.png',
      page: sensoryScreen(),
    ),
    ModelLearn(
      title: 'Attention/Hyperactivity',
      image: 'assets/images/attention.png',
      page: underdevelopment(),
    ),
    ModelLearn(
      title: 'executive functioning',
      image: 'assets/images/executive.png',
      page: underdevelopment(),
    ),
    ModelLearn(
      title: 'Writing',
      image: 'assets/images/writing.png',
      page: underdevelopment(),
    ),
    ModelLearn(
      title: 'oral language',
      image: 'assets/images/oral.png',
      page: underdevelopment(),
    ),
    ModelLearn(
      title: 'social skills',
      image: 'assets/images/social.png',
      page: underdevelopment(),
    ),
  ];

  static UnmodifiableListView<ModelLearn> get dataLearn =>
      UnmodifiableListView(_dataLearn);

  static int get dataLength => _dataLearn.length;
}
