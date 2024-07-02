import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
// import 'package:kids_learning/Component/appBar.dart';
// import 'package:kids_learning/Component/drawer.dart';

// import 'package:kids_learning/views/Video_page.dart';
// import 'package:kids_learning/views/apps_pag.dart';
// import 'package:kids_learning/views/learn_page.dart';
// import 'package:kids_learning/views/story_page.dart';

import '../../detailspage/trainmain.dart';
import '../Component/appBar.dart';
import '../Component/navigation_bar.dart';
import 'learn_page.dart';

class kindergardentrainhome extends StatefulWidget {
  @override
  _kindergardentrainhomeState createState() => _kindergardentrainhomeState();
}

class _kindergardentrainhomeState extends State<kindergardentrainhome> {
  int _indexPage = 0;
  List<Widget> _pages = [
    PageLearning(),
    // PageVideo(),
    // PageStory(),
    // PageApps(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 170, 110),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150),
                bottomLeft: Radius.circular(150))),
        title: Text(
          'Kinder garden',
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
                context, MaterialPageRoute(builder: (context) => trainmain()))),
      ),
      // drawer: DrawerCustom(),
      body: _pages[_indexPage],
      // bottomNavigationBar: CustomNavigationBar(
      //   indexpage: _indexPage,
      //   onClock: (index) {
      //     setState(() {
      //       _indexPage = index;
      //     });
      // print('test');
      // },
      // ),
    );
  }
}
