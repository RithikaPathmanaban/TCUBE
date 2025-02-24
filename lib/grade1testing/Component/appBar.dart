import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_learning/detailspage/t3grade1.dart';

class AppBarSimple1 extends StatelessWidget implements PreferredSizeWidget {
  // final String title;
  // AppBarSimple({this.title = "Kindergarden"});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => Testtraintrackgrade1()))),
      backgroundColor: Color.fromARGB(255, 243, 170, 110),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(150),
              bottomLeft: Radius.circular(150))),
      title: Text(
        'Grade1',
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
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back, color: Colors.white),
      //   onPressed: () => Navigator.pop(context),
      // ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
