import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHendler;
  // ignore: prefer_const_constructors_in_immutables
  Answer(
    this.selectHendler,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHendler,
          child: Text(answerText),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 86, 188, 19),
            side: BorderSide(
              color: Color.fromARGB(255, 86, 188, 19),
              width: 1,
            ),
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 15, fontStyle: FontStyle.normal),
          ),
        ));
  }
}
