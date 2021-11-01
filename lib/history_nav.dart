// ignore_for_file: prefer_const_constructors

import 'package:bitesbee/tabfour.dart';
import 'package:bitesbee/tabthree.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NavigationHistory extends StatefulWidget {
  const NavigationHistory({Key? key}) : super(key: key);

  @override
  _NavigationHistoryState createState() => _NavigationHistoryState();
}

class _NavigationHistoryState extends State<NavigationHistory> {
  final GlobalKey _key1 = GlobalKey();
  final GlobalKey _key2 = GlobalKey();
  late int selectedTabPosition = 0;
  selectedItem(int id) {
    setState(() {
      selectedTabPosition = id;
    });
  }
  Map<int, dynamic> widgetMy = {};

  @override
  void initState() {
    widgetMy = {
      0: TabThree(),
      1: TabFour(),
    };
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Text("Orders History",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: GoogleFonts.poppins(
                    fontWeight: FontWeight.w900,
                  ).fontFamily,
                ),),
            ),

          ),
          margin_20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                key: _key1,
                onTap: () => {selectedItem(0)},
                child: tabWidget(selectedTabPosition == 0, "Delivered Rejected"),
              ),
              InkWell(
                key: _key2,
                onTap: () => {selectedItem(1)},
                child: tabWidget(selectedTabPosition == 1, "Rejected"),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: widgetMy[selectedTabPosition],
            ),
          ),
          // widgetMy[selectedTabPosition],
        ],
      ),
    );
  }
  tabWidget(bool selectedItem, String text) {
    return Container(
      width: 160,
      height: 35,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 14,
            color: selectedItem ? Color(0xffFFC545).withOpacity(0.2) :
            Colors.white,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: selectedItem ? Color(0xffFFC545) : Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Center(
          child: Text(
            "$text",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: selectedItem ? Colors.black : Colors.black.withOpacity(.5),
              fontWeight: selectedItem ? FontWeight.w900 : FontWeight.w500,
              fontSize: selectedItem ? 14 : 12,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
      ),
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


