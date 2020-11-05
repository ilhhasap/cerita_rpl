import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         child: ListView(
           children: <Widget> [
             Padding(
               padding: EdgeInsets.only(left: 25, top: 25),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget> [
                   Text('Hi, Ilham', style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400],
                  ),),
                   Text('Temukan Buku Sekejap', style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey[900],
                  ),),
                 ],
               )
             ),

             Container(
               height: 39,
               margin: EdgeInsets.only(left: 25, right: 25, top: 20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.grey[100],
               ),
               child: Stack(
                 children: <Widget> [
                   TextField(
                     maxLengthEnforced: true,
                     style: GoogleFonts.poppins(
                       fontSize: 12,
                     ),
                     decoration: InputDecoration(
                       contentPadding: EdgeInsets.only(left: 19, right:  50, bottom: 8),
                       border: InputBorder.none,
                       hintText: 'Search a Boo..',
                       hintStyle: GoogleFonts.poppins(
                         fontSize: 12,
                         color: Colors.grey[400]
                       )
                     )
                   ),
                   Positioned(
                     left: 0,
                     child: SvgPicture.asset('/icons/icon_search.svg'),
                   )
                 ],
               )
             )
           ]
         ),
       )
    );
  }
}