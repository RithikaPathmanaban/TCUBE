import 'package:flutter/material.dart';
import '../views/symbols.dart';
import 'quiz.dart';
import 'result.dart';

class mathQuze extends StatefulWidget {
  const mathQuze({Key? key}) : super(key: key);

  @override
  _mathQuzeAppState createState() => _mathQuzeAppState();
}

class _mathQuzeAppState extends State<mathQuze> {
  final _questions = const [
    {
      'question': 'Q1:Does your child answered the correctly?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Moderate', 'score': 5},
        // {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question': 'Q2: Is there any confusion on understanding symbols?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q3: Does your child identify the symbol?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q4: Does your child get strucked in any symbol?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        {'text': 'Moderate', 'score': 5},
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
            backgroundColor: Color.fromARGB(255, 243, 170, 110),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(150))),
            title: Text(
              'Symbols',
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
                  context, MaterialPageRoute(builder: (context) => symbols1())),
            )),
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
