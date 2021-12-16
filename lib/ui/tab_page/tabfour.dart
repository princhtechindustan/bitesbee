// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class TabFour extends StatefulWidget {
  const TabFour({Key? key}) : super(key: key);

  @override
  _TabFourState createState() => _TabFourState();
}

class _TabFourState extends State<TabFour> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        margin_30,
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Card(
            semanticContainer: true,
            shadowColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,
                    right: 10,top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,
                          ),
                        ),
                      ),
                      Icon(Icons.done_outlined,
                        color: Colors.green,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Order Time: ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,

                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 20 Sep,2020, 12:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Order ID",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("#OTBDFJDKK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Order Amount",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text('\u{20B9} ${ 79.00}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Payment Type",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("COD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,bottom: 10),
                      child: SvgPicture.asset("image/Group 1028.svg",),
                    ),
                    weightMargin_20,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: '902,Tower B, Floor-9, Bestech Business,'
                                'Tower,Sector 66,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Mohali, Punjab,160066',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  ),
                                  children: <TextSpan>[

                                  ]),
                            ]),

                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  height: 35,
                  color: Color(0XFFFFF8E8).withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done,
                              color: Color(0xff5DC277)
                          ),
                          Text(" Accept ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Color(0XFFFFF8E8),
                      ),
                      Row(
                        children: [
                          Icon(Icons.close,
                            color: Colors.red,),
                          Text(" Reject ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        margin_20,
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Card(
            semanticContainer: true,
            shadowColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,
                    right: 10,top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,
                          ),
                        ),
                      ),
                      Icon(Icons.done_outlined,
                        color: Colors.green,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Order Time: ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,

                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 20 Sep,2020, 12:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Order ID",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("#OTBDFJDKK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Order Amount",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text('\u{20B9} ${ 79.00}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Payment Type",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("COD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,bottom: 10),
                      child: SvgPicture.asset("image/Group 1028.svg",),
                    ),
                    weightMargin_20,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: '902,Tower B, Floor-9, Bestech Business,'
                                'Tower,Sector 66,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Mohali, Punjab,160066',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  ),
                                  children: <TextSpan>[

                                  ]),
                            ]),

                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  height: 35,
                  color: Color(0XFFFFF8E8).withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done,
                              color: Color(0xff5DC277)
                          ),
                          Text(" Accept ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Color(0XFFFFF8E8),
                      ),
                      Row(
                        children: [
                          Icon(Icons.close,
                            color: Colors.red,),
                          Text(" Reject ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        margin_20,
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Card(
            semanticContainer: true,
            shadowColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,
                    right: 10,top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,
                          ),
                        ),
                      ),
                      Icon(Icons.done_outlined,
                        color: Colors.green,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Order Time: ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,

                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 20 Sep,2020, 12:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Order ID",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("#OTBDFJDKK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Order Amount",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text('\u{20B9} ${ 79.00}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Payment Type",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("COD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,bottom: 10),
                      child: SvgPicture.asset("image/Group 1028.svg",),
                    ),
                    weightMargin_20,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: '902,Tower B, Floor-9, Bestech Business,'
                                'Tower,Sector 66,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Mohali, Punjab,160066',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  ),
                                  children: <TextSpan>[

                                  ]),
                            ]),

                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  height: 35,
                  color: Color(0XFFFFF8E8).withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done,
                              color: Color(0xff5DC277)
                          ),
                          Text(" Accept ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Color(0XFFFFF8E8),
                      ),
                      Row(
                        children: [
                          Icon(Icons.close,
                            color: Colors.red,),
                          Text(" Reject ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        margin_20,
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Card(
            semanticContainer: true,
            shadowColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,
                    right: 10,top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,
                          ),
                        ),
                      ),
                      Icon(Icons.done_outlined,
                        color: Colors.green,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Order Time: ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,

                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 20 Sep,2020, 12:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Order ID",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("#OTBDFJDKK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Order Amount",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text('\u{20B9} ${ 79.00}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Payment Type",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("COD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,bottom: 10),
                      child: SvgPicture.asset("image/Group 1028.svg",),
                    ),
                    weightMargin_20,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: '902,Tower B, Floor-9, Bestech Business,'
                                'Tower,Sector 66,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Mohali, Punjab,160066',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  ),
                                  children: <TextSpan>[

                                  ]),
                            ]),

                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  height: 35,
                  color: Color(0XFFFFF8E8).withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done,
                              color: Color(0xff5DC277)
                          ),
                          Text(" Accept ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Color(0XFFFFF8E8),
                      ),
                      Row(
                        children: [
                          Icon(Icons.close,
                            color: Colors.red,),
                          Text(" Reject ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        margin_20,
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Card(
            semanticContainer: true,
            shadowColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,
                    right: 10,top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,
                          ),
                        ),
                      ),
                      Icon(Icons.done_outlined,
                        color: Colors.green,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Order Time: ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,

                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 20 Sep,2020, 12:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Order ID",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("#OTBDFJDKK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Order Amount",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text('\u{20B9} ${ 79.00}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Payment Type",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("COD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,bottom: 10),
                      child: SvgPicture.asset("image/Group 1028.svg",),
                    ),
                    weightMargin_20,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: '902,Tower B, Floor-9, Bestech Business,'
                                'Tower,Sector 66,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Mohali, Punjab,160066',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  ),
                                  children: <TextSpan>[

                                  ]),
                            ]),

                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  height: 35,
                  color: Color(0XFFFFF8E8).withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done,
                              color: Color(0xff5DC277)
                          ),
                          Text(" Accept ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Color(0XFFFFF8E8),
                      ),
                      Row(
                        children: [
                          Icon(Icons.close,
                            color: Colors.red,),
                          Text(" Reject ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Card(
            semanticContainer: true,
            shadowColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,
                    right: 10,top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,
                          ),
                        ),
                      ),
                      Icon(Icons.done_outlined,
                        color: Colors.green,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Order Time: ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,

                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 20 Sep,2020, 12:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Order ID",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("#OTBDFJDKK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Order Amount",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text('\u{20B9} ${ 79.00}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Payment Type",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("COD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,bottom: 10),
                      child: SvgPicture.asset("image/Group 1028.svg",),
                    ),
                    weightMargin_20,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: '902,Tower B, Floor-9, Bestech Business,'
                                'Tower,Sector 66,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Mohali, Punjab,160066',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  ),
                                  children: <TextSpan>[

                                  ]),
                            ]),

                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  height: 35,
                  color: Color(0XFFFFF8E8).withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done,
                              color: Color(0xff5DC277)
                          ),
                          Text(" Accept ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Color(0XFFFFF8E8),
                      ),
                      Row(
                        children: [
                          Icon(Icons.close,
                            color: Colors.red,),
                          Text(" Reject ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        margin_20,
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Card(
            semanticContainer: true,
            shadowColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,
                    right: 10,top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,
                          ),
                        ),
                      ),
                      Icon(Icons.done_outlined,
                        color: Colors.green,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Order Time: ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,

                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 20 Sep,2020, 12:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Order ID",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("#OTBDFJDKK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Order Amount",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text('\u{20B9} ${ 79.00}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Payment Type",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("COD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,bottom: 10),
                      child: SvgPicture.asset("image/Group 1028.svg",),
                    ),
                    weightMargin_20,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: '902,Tower B, Floor-9, Bestech Business,'
                                'Tower,Sector 66,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Mohali, Punjab,160066',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  ),
                                  children: <TextSpan>[

                                  ]),
                            ]),

                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  height: 35,
                  color: Color(0XFFFFF8E8).withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done,
                              color: Color(0xff5DC277)
                          ),
                          Text(" Accept ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Color(0XFFFFF8E8),
                      ),
                      Row(
                        children: [
                          Icon(Icons.close,
                            color: Colors.red,),
                          Text(" Reject ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        margin_20,
        Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Card(
            semanticContainer: true,
            shadowColor: Colors.white.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,
                    right: 10,top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,
                          ),
                        ),
                      ),
                      Icon(Icons.done_outlined,
                        color: Colors.green,)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Order Time: ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontSize: 10,
                                fontFamily: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                ).fontFamily,

                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 20 Sep,2020, 12:30 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ).fontFamily,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Order ID",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("#OTBDFJDKK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Order Amount",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text('\u{20B9} ${ 79.00}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Payment Type",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                          Text("COD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,bottom: 10),
                      child: SvgPicture.asset("image/Group 1028.svg",),
                    ),
                    weightMargin_20,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: '902,Tower B, Floor-9, Bestech Business,'
                                'Tower,Sector 66,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Mohali, Punjab,160066',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  ),
                                  children: <TextSpan>[

                                  ]),
                            ]),

                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  color: Color(0xff00000026),
                ),
                margin_20,
                Container(
                  height: 35,
                  color: Color(0XFFFFF8E8).withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.done,
                              color: Color(0xff5DC277)
                          ),
                          Text(" Accept ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                      Container(
                        width: 1,
                        color: Color(0XFFFFF8E8),
                      ),
                      Row(
                        children: [
                          Icon(Icons.close,
                            color: Colors.red,),
                          Text(" Reject ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  var margin_30 = SizedBox(
    height: 30,
  );

  var margin_40 = SizedBox(
    height: 40,
  );

  var margin_50 = SizedBox(
    height: 50,
  );

  var margin_20 = SizedBox(
    height: 20,
  );

  var margin_5 = SizedBox(
    height: 5,
  );

  var margin_10 = SizedBox(
    height: 20,
  );

  var weightMargin_10 = SizedBox(
    width: 5,
  );

  var weightMargin_20 = SizedBox(
    width: 10,
  );

  var weightMargin_30 = SizedBox(
    width: 30,
  );
}
