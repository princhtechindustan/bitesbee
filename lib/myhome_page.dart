// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bitesbee/submit_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SvgPicture.asset(
                            "image/1.svg",
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 90,
                              top: 30,
                            ),
                            child: SvgPicture.asset(
                              "image/Group 282.svg",

                            ),
                          )),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SvgPicture.asset(
                            "image/0.svg",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SvgPicture.asset(
                        'image/Group 291.svg',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35,right: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "image/Group 292.svg",
                        ),
                        SvgPicture.asset(
                          "image/6.svg",
                        ),
                      ],
                    ),
                  ),
                  margin_20,
                  Center(
                    child: SvgPicture.asset(
                      'image/BitesBee.svg',
                    ),
                  ),
                  margin_20,
                  Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                        ).fontFamily,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  margin_20,
                  Center(
                    child: Container(
                      height: 1,
                      width: 122,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 4),
                            blurRadius: 10,
                            color: Color(0xffFFC545),
                          ),
                        ],
                        color: Color(0xffFFC545),
                      ),
                    ),
                  ),
                  margin_20,
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 45),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            " Enter your mobile number to continue",
                            style: TextStyle(
                              color: Color(0xff929292),
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 12,
                            ),
                          ),
                          margin_5,
                          Text(
                            " we'll send you the OTP",
                            style: TextStyle(
                              color: Color(0xff929292),
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 12,
                            ),
                          ),
                          margin_20,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ).fontFamily,


                          ),
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0XFFAEAEAE),
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffAEAEAE),
                              ),
                            ),
                            labelText: 'Mobile Number',
                            labelStyle: TextStyle(
                              color: Color(0XFFAEAEAE),
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                              ).fontFamily,

                            ),
                          ),
                        ),
                        margin_50,
                        InkWell(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 14,
                                  color: Color(0xffFFC545).withOpacity(0.3),
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffFFC545),
                            ),
                            child: Center(
                              child: Text("Send OTP",
                                style: TextStyle(
                                  fontFamily: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                  ).fontFamily,
                                  fontSize: 16,
                                ),),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SubmitOTP(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
