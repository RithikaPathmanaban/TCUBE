import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_learning/detailspage/childetails.dart';
// import 'package:kids_learning/grade1/maths/widgets/result_widget.dart';
// import 'package:kids_learning/grade1/mathsquiz/Quiz1.dart';

import '../../mathsquiz/Quiz1.dart';
import '../models/question_answer_model.dart';
import '../widgets/number_of_questions_widget.dart';
import '../widgets/questions_widget.dart';
import '../widgets/quiz_type_widget.dart';
import '../widgets/ready_start_widget.dart';
import '../widgets/result_widget.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:kids_math_app/models/question_answer_model.dart';
// import 'package:kids_math_app/widgets/number_of_questions_widget.dart';
// import 'package:kids_math_app/widgets/questions_widget.dart';
// import 'package:kids_math_app/widgets/quiz_type_widget.dart';
// import 'package:kids_math_app/widgets/ready_start_widget.dart';
// import 'package:kids_math_app/widgets/result_widget.dart';

class KidsHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KidsHomePageState();
}

class KidsHomePageState extends State<KidsHomePage> {
  bool _isQuestionTypeAdd = false;
  bool _isQuestionTypeSubtract = false;
  var _numberOfQuestions;
  bool _hasQuizStarted = false;
  int _minNumber = 50;
  int _maxNumber = 99;
  int _currentDisplayedQuestion = 0;
  int _userScore = 0;
  List<Map<String, Object>> questionsAnswers = [];

  _selectQuestionType(String type) {
    // _audioCache.play('tap_sound.mp3');
    setState(() {
      if (type == "ADD") {
        _isQuestionTypeAdd = true;
      }
      if (type == "SUBTRACT") {
        _isQuestionTypeSubtract = true;
      }
      // if (type == "End") {}
    });
  }

  _selectNumberOfQuestions(int number) {
    setState(() {
      _numberOfQuestions = number;
    });
  }

  _backToQuestionsType() {
    setState(() {
      _isQuestionTypeAdd = false;
      _isQuestionTypeSubtract = false;
    });
  }

  _backToNumberOfQuestions() {
    setState(() {
      _numberOfQuestions = null;
    });
  }

  _startQuiz() {
    questionsAnswers = QuestionAnswer(
            isQuestionTypeAdd: _isQuestionTypeAdd,
            isQuestionTypeSubtract: _isQuestionTypeSubtract,
            maxNumber: _maxNumber,
            minNumber: _minNumber,
            numberOfQuestions: _numberOfQuestions)
        .questions;
    setState(() {
      _hasQuizStarted = true;
    });
  }

  _answerSelectedByUser(bool userAnswer) {
    print("userSelected Answer $userAnswer");
    print(
        "actual answer ${questionsAnswers[_currentDisplayedQuestion]["answer"]}");
    if (userAnswer == questionsAnswers[_currentDisplayedQuestion]["answer"]) {
      _userScore = _userScore + 1;
    }
    if (_currentDisplayedQuestion <= _numberOfQuestions - 1) {
      setState(() {
        _currentDisplayedQuestion = _currentDisplayedQuestion + 1;
      });
    }

    print("user Score is $_userScore");
    print("current question $_currentDisplayedQuestion");
    print("total question $_numberOfQuestions");
  }

  String _resultFace() {
    var _percentageScore = _userScore / _numberOfQuestions;
    if (_percentageScore >= 0.9) {
      return "assets/images/face_90.svg";
    }
    if (0.9 > _percentageScore && _percentageScore >= 0.6) {
      return "assets/images/face_60.svg";
    }
    if (0.6 > _percentageScore && _percentageScore >= 0.4) {
      return "assets/images/face_40.svg";
    } else {
      return "assets/images/face_0.svg";
    }
  }

  _restart() {
    print("Restarted");
    setState(() {
      _isQuestionTypeAdd = false;
      _isQuestionTypeSubtract = false;
      _numberOfQuestions = null;
      _hasQuizStarted = false;
      _currentDisplayedQuestion = 0;
      _userScore = 0;
      questionsAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/screen_bg.svg',
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
          FloatingActionButton(
              child: Icon(Icons.arrow_back),
              backgroundColor: Color.fromARGB(255, 88, 223, 93),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const math1Quze()),
                );
              }),
          Center(
              child: _isQuestionTypeAdd == false &&
                      _isQuestionTypeSubtract == false
                  ? QuizType(_selectQuestionType)
                  : _numberOfQuestions == null
                      ? NumberOfQuestions(
                          _selectNumberOfQuestions, _backToQuestionsType)
                      : !_hasQuizStarted
                          ? ReadyStart(
                              startQuiz: _startQuiz,
                              backToNumberOfQuestions: _backToNumberOfQuestions,
                            )
                          : _currentDisplayedQuestion <= _numberOfQuestions - 1
                              ? Questions(
                                  currentQuestion: questionsAnswers[
                                          _currentDisplayedQuestion]["question"]
                                      as String,
                                  answerSelectedByUser: _answerSelectedByUser,
                                )
                              : Result(
                                  userScore: _userScore,
                                  numberOfQuestions: _numberOfQuestions,
                                  resultFace: _resultFace,
                                  restart: _restart)),
        ],
      ),
    );
  }
}
