import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

class adultmathQuze extends StatefulWidget {
  const adultmathQuze({Key? key}) : super(key: key);

  @override
  _adultmathQuzeAppState createState() => _adultmathQuzeAppState();
}

class _adultmathQuzeAppState extends State<adultmathQuze> {
  final _questions = const [
    {
      'question': 'Q1:How many feet are equal to a meter?',
      'answers': [
        {'text': '3.28 feet', 'score': 10},
        {'text': '2.28 feet', 'score': 0},
        {'text': '10 feet', 'score': 5},
        // {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question': 'Q2: How many right angles are there in a square?',
      'answers': [
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 10},
        {'text': '3', 'score': 5},
      ]
    },
    {
      'question': 'Q3:656 is a',
      'answers': [
        {'text': 'Prime', 'score': 10},
        {'text': 'Composite', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q4: How many inches are equal to a foot?',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '11', 'score': 10},
        {'text': '12', 'score': 5},
      ]
    },
    {
      'question':
          'Q5:If you had 785 dogs, how many would you have if I took 524?',
      'answers': [
        {'text': '3.261', 'score': 10},
        {'text': '2.278', 'score': 0},
        {'text': '359', 'score': 5},
        // {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question':
          'Q6: Harmony had 357 cats, and Lindsey had 150 dogs, so how many animals are there altogether?',
      'answers': [
        {'text': '453', 'score': 0},
        {'text': '507', 'score': 10},
        {'text': '518', 'score': 5},
      ]
    },
    {
      'question':
          'Q7:Julian has 52 chocolates, and Bria has 169. How many are there altogether?',
      'answers': [
        {'text': '121', 'score': 10},
        {'text': '221', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q8: 10+9=',
      'answers': [
        {'text': '0', 'score': 0},
        {'text': '19', 'score': 10},
        {'text': '12', 'score': 5},
      ]
    },
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
          automaticallyImplyLeading: true,
          backgroundColor: Color.fromARGB(255, 243, 170, 110),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150))),
          title: Center(
            child: Text(
              'Math Quiz',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
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
                  'assets/images/no.png',
                  fit: BoxFit.cover,
                  height: 400,
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
                : Result(_totalScore, _resetQuzie),
          ),
        ])),
      ),
    );
  }
}
