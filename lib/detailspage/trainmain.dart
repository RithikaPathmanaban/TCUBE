import 'package:flutter/material.dart';
import 'package:kids_learning/detailspage/t3.dart';
import 'package:kids_learning/grade4testing/main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../grade4training/main.dart';
import '../kindergardertraining/main.dart';
import 'gradelist.dart';
// import 'package:tcube/login.dart';

class trainmain extends StatefulWidget {
  // const trainmain({super.key});

  @override
  State<trainmain> createState() => _trainmainState();
}

class _trainmainState extends State<trainmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/mainpic.jpg"), fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Testtraintrack()));
                },
                icon: Icon(Icons.arrow_back),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: _launchURL,
            child:
                Container(alignment: Alignment.center, child: _bannerCard2()),
          ),
          SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => grade1()));
            },
            child:
                Container(alignment: Alignment.center, child: _bannerCard1()),
          ),
          SizedBox(height: 100),
        ],
      ),
    )));
  }
}

_launchURL() async {
  const url =
      'https://www.google.com/maps/search/sld+doctors+in+tamilnadu/@11.0327805,77.2326197,11.17z';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

Widget _bannerCard1() => Container(
      height: 200,
      width: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get train from TCUBE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  'Training for the children will be given by TCUBE.',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
Widget _bannerCard2() => Container(
      height: 200,
      width: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Search SLD trainers',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  'Search SLD trainers who are across Tamilnadu and their places.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
// ElevatedButton(
//                   onPressed: _launchURL,

//                   // (() {
//                   //      Navigator.push(
//                   //                               context,
//                   //                               MaterialPageRoute(
//                   //                                 builder: (context) => gradelist(),
//                   //                               ));

//                   child: Text("Search SLD Trainers",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                           // letterSpacing: 0.5,
//                           color: Colors.black)),
//                   style: ElevatedButton.styleFrom(
//                     primary: Color.fromARGB(230, 255, 255, 255),
//                     // side: BorderSide(width: 2),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                   )),
//               ElevatedButton(
//                   onPressed: (() {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => gradelist(),
//                         ));
//                   }),
//                   child: Text("Get Train from TCUBE",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                           // letterSpacing: 0.5,
//                           color: Colors.black)),
//                   style: ElevatedButton.styleFrom(
//                     primary: Color.fromARGB(230, 255, 255, 255),
//                     // side: BorderSide(width: 2),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                   )),