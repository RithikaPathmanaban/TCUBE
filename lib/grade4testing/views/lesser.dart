import 'package:flutter/material.dart';

import '../../grade4testing/views/symbols.dart';

class lesser1 extends StatefulWidget {
  const lesser1({Key? key}) : super(key: key);

  @override
  State<lesser1> createState() => _lesser1State();
}

class _lesser1State extends State<lesser1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(89, 244, 108, 10),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: Text('Which one is\na correct answer?',
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 30,
      //         fontWeight: FontWeight.bold,
      //       )),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => symbols1()))),
            ],
          ),
          Text('Which one is a correct answer?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          Text('Questions',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: 150,
                  width: 150,
                  child: Image(
                    image: AssetImage('assets/images/ls1.png'),
                  ),
                ),
              ),
              // SizedBox(height: 20),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: 150,
                  width: 150,
                  child: Image(
                    image: AssetImage('assets/images/ls2.png'),
                  ),
                ),
              ),
            ],
          ),
          Text('Options',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: (() {
                // onClick(newAudio: PathAudiosymbols.symbol1);
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Center(
                      child: Row(
                        children: [
                          Text(
                            "  RIGHT ANSWER",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
              child: Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: 100,
                  width: 100,
                  child: Image(
                    image: AssetImage('assets/images/1.png'),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 20),

            GestureDetector(
              onTap: (() {
                // onClick(newAudio: PathAudiosymbols.symbol2);
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Center(
                      child: Row(
                        children: [
                          Text(
                            "  WRONG ANSWER",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    // actions: <Widget>[
                    //   Container(
                    //     color: Colors.white,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Text(
                    //           'If the symbol\'s mouth is\nexpanded to the left side,\nthen it is lesser than symbol.\nFor example 2 is lesser\nthan 5 ,so 2 < 5',
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold, fontSize: 15),
                    //           textAlign: TextAlign.center,
                    //         ),
                    //       ],
                    //     ),
                    //   )
                    // ],
                  ),
                );
              }),
              child: Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: 100,
                  width: 100,
                  child: Image(
                    image: AssetImage('assets/images/2.png'),
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
