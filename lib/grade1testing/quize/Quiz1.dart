import 'package:flutter/material.dart';
// import 'package:kids_learning/grade1testing/views/alphabet_Screen2.dart';
// import 'package:kids_learning/grade1training/views/alphabet_Screen2.dart';
// import 'package:kids_learning/grade2training/views/alphabet_Screen2.dart';
import 'package:kids_learning/kindergardentesting/quize/quizbanner.dart';
// import 'package:kids_learning/kindergardertraining/main.dart';
// import 'package:kids_learning/kindergardentesting/readingquize/quizbanner.dart';
import '../views/alphabet_Screen2.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(phonicsquiz());

class phonicsquiz extends StatefulWidget {
  const phonicsquiz({Key? key}) : super(key: key);

  @override
  _phonicsquizAppState createState() => _phonicsquizAppState();
}

class _phonicsquizAppState extends State<phonicsquiz> {
  final _questions = const [
    {
      'question': 'Q1:Does your child read Alphabet corrrectly?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Moderate', 'score': 5},
        // {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question': 'Q2: Is there any confusion on recognising letter\'s?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q3: Does your child read the letter\'s sequentially ?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q4: Does your child miss any letter?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        {'text': 'Moderate', 'score': 5},
      ]
    },
    // {
    //   'question': 'Q5: Your dog is',
    //   'answers': [
    //     {'text': 'Losing body hair', 'score': -2},
    //     {'text': 'Having a good amount of body hair', 'score': -1},
    //     {'text': 'Showing skin problems', 'score': -2},
    //     {'text': 'No preblems', 'score': 10},
    //   ]
    // },
    // {
    //   'question': 'Q6: Did your dog vomit recently?',
    //   'answers': [
    //     {'text': 'Once', 'score': 10},
    //     {'text': 'Twice', 'score': 9},
    //     {'text': 'NO', 'score': 10},
    //     {'text': 'I don\'t know', 'score': 9},
    //   ]
    // },
    // {
    //   'question': 'Q7: Is there a change in your dog\'s toilet habit\'?',
    //   'answers': [
    //     {'text': 'It\'s change', 'score': 9},
    //     {'text': 'A Little Bit', 'score': 9},
    //     {'text': 'No', 'score': 19},
    //     {'text': 'I don\'t think so', 'score': 9},
    //   ]
    // },
    // {
    //   'question': 'Q8: What\'s your dog\'s skin status\'?',
    //   'answers': [
    //     {'text': 'It\'s itchy', 'score': 9},
    //     {'text': 'It\'s showing redness', 'score': 9},
    //     {'text': 'It\'s fine', 'score': 10},
    //     {'text': 'It seems as it was before', 'score': 10},
    //   ]
    // },
    // {
    //   'question': 'Q9: Your dog\'s teeth\'s status',
    //   'answers': [
    //     {'text': 'Bleeding in some parts', 'score': 9},
    //     {'text': 'Messy and dirty teeth.', 'score': 9},
    //     {'text': 'White or pale', 'score': 10},
    //     {'text': 'Looks fine', 'score': 10},
    //   ]
    // },
    // {
    //   'question': 'Q10: Did your dog lose weight?',
    //   'answers': [
    //     {'text': 'Too much', 'score': 9},
    //     {'text': 'No', 'score': 10},
    //     {'text': ' He gained some weight.', 'score': 10},
    //     {'text': 'Yes', 'score': 9},
    //   ]
    // },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuzie() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("You have more questions to answer");
    } else {
      print("No more Question");
    }
  }

  void _answeQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 231, 231),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 243, 170, 110),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150))),
          title: Text(
            'Parent test',
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
                  MaterialPageRoute(builder: (context) => grade1test()))),
        ),
        // backgroundColor: Color(0xff19B9AF),
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomRight: Radius.circular(150),
        //         bottomLeft: Radius.circular(150)))),
        // drawer: Drawer(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          //  children: [
          Container(
              margin: const EdgeInsets.fromLTRB(50, 50, 0, 0),
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color.fromARGB(255, 242, 231, 231),
                child: Image.asset(
                  'assets/images/reading.png',
                  fit: BoxFit.cover,
                  height: 200,
                  width: 1200,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: _questionIndex < _questions.length
                ? Quize(
                    answeQuestion: _answeQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore, _resetQuzie, userScore: 10),
          ),
        ])),
      ),
    );
  }
}
