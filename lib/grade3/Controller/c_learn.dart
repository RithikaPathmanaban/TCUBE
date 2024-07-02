import 'dart:collection';
// import 'package:kids_learning/Model/m_learn.dart';

// import 'package:kids_learning/memory/main.dart';
// import 'package:kids_learning/views/Alphabet_Screen.dart';
// import 'package:kids_learning/views/Animal_Screen.dart';
// import 'package:kids_learning/views/alphabet_Screen2.dart';
// import 'package:kids_learning/views/colors_screen.dart';
// import 'package:kids_learning/views/number_screen.dart';
// import 'package:kids_learning/views/sensory.dart';

// import '../../views/Animal_Screen.dart';
import '../Model/m_learn.dart';
import '../memory/main.dart';
import '../views/Animal_Screen.dart';
import '../views/sensory.dart';
import '../views/tonguetwister.dart';
import '../views/colors_screen.dart';
import '../views/number_screen.dart';

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
      page: tonguetwister(),
    ),
    // ModelLearn(
    //   title: 'Mathematics',
    //   image: 'assets/images/alphabet.png',
    //   page: AlphabetScreen1(),
    // ),
    ModelLearn(
      title: 'Mathematics',
      image: 'assets/images/no.png',
      page: NumberScreen(),
    ),

    ModelLearn(
      title: 'Memory',
      image: 'assets/images/memory.png',
      page: memory(),
    ),

    ModelLearn(
      title: 'Sensory abilities',
      image: 'assets/images/sensory.png',
      page: sensoryScreen(),
    ),
    // ModelLearn(
    //   title: 'Attention/Hyperactivity',
    //   image: 'assets/images/attention.png',
    //   page: ColorsScreen(),
    // ),
    // ModelLearn(
    //   title: 'executive functioning',
    //   image: 'assets/images/executive.png',
    //   page: ColorsScreen(),
    // ),
    ModelLearn(
      title: 'Writing',
      image: 'assets/images/writing.png',
      page: AnimalScreen(),
    ),
    ModelLearn(
      title: 'Oral language',
      image: 'assets/images/oral.png',
      page: AnimalScreen(),
    ),
    ModelLearn(
      title: 'Social skills',
      image: 'assets/images/social.png',
      page: AnimalScreen(),
    ),
  ];

  static UnmodifiableListView<ModelLearn> get dataLearn =>
      UnmodifiableListView(_dataLearn);

  static int get dataLength => _dataLearn.length;
}
