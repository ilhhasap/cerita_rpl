import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cerita_rpl/styles/my_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 25, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hello,',
                  style: GoogleFonts.lora(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'Ilham Tristadika',
                  style: GoogleFonts.lora(
                  fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.only(left: 25, top: 10),
              child: Text(
                  'Find your stories!',
                  style: GoogleFonts.lora(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: Colors.greenAccent[400],
                  ),
                ),
            ),
        Container(
            height: 50,
            margin: EdgeInsets.only(left: 25, right: 25, top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
             boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: <Widget>[
                TextField(
                    maxLengthEnforced: true,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 60, right: 50, top: 5),
                        border: InputBorder.none,
                        hintText: 'Search a Book..',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.grey[400]))),
                  Padding(
                  padding: EdgeInsets.only(left: 18, top: 11),
                  child: Icon(Icons.search, color: Colors.greenAccent[400],size: 30.0),
                )
              ],
            )),

            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
                          )
                    ]),
                  ));
                }
              
                TapBar({List<Tab> tabs}) {}
}
