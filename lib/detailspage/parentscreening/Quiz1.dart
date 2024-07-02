import 'package:flutter/material.dart';
import 'package:kids_learning/detailspage/childetails.dart';
import 'package:kids_learning/detailspage/gradelist.dart';
import 'package:kids_learning/kindergardentesting/quize/quizbanner.dart';
// import 'package:kids_learning/kindergardentesting/readingquize/quizbanner.dart';
import 'quiz.dart';
import 'result.dart';

// void main() => runApp(Quze());

class parentsceening extends StatefulWidget {
  const parentsceening({Key? key}) : super(key: key);

  @override
  _parentsceeningAppState createState() => _parentsceeningAppState();
}

class _parentsceeningAppState extends State<parentsceening> {
  final _questions = const [
    {
      'question': 'Q1:Does your child stutters while speaking?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
        // {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question': 'Q2:Does your child mispronounces word while speaking? ',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question':
          'Q3: Does your child gets confused in naming objects? (Eg. Table for chair)',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question':
          'Q4: Does your child asks for repetition again and again when listening to others?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question':
          'Q5:Does your child gets confused when many instructions are given at once?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
        // {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question':
          'Q6:Does your child has difficulty in listening to what I say in crowded places? ',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q7: Does your child face difficulty in reading?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question':
          'Q8: Does your child has difficulty in understanding what other people say?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q9: Does your child misses lines or words while reading?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q10: Does your child has difficulty in reading aloud?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q11:Does your child  has difficulty writing?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
        // {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question': 'Q12:Does your child  holds pen, pencil appropriately?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question':
          'Q13: Does your child  has errors in number identification? (Eg. 3 as 9)',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q14: Does your child  maintain left to right orientation?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        // {'text': 'Moderate', 'score': 5},
      ]
    },
    {
      'question': 'Q15:Does your child has difficulty in finger counting?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 10},
        // {'text': 'Moderate', 'score': 5},
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
        backgroundColor: Color.fromARGB(255, 178, 234, 244),
        appBar: AppBar(
          actions: [
            //app icon
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          // Navigator.pop();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => child()));
                        },
                        icon: Icon(Icons.arrow_back))
                  ],
                ))
          ],
          automaticallyImplyLeading: true,
          backgroundColor: Color.fromARGB(255, 54, 196, 231),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150))),
          title: Center(
            child: Text(
              'Parent Screening Test',
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
                backgroundColor: Color.fromARGB(255, 183, 224, 242),
                child: Image.asset(
                  'assets/images/mom.png',
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
