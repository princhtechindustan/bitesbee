// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:bitesbee/data/models/verify_otp.dart';
import 'package:bitesbee/ui/login/login_controller.dart';
import 'package:bitesbee/ui/order_page/order_page.dart';
import 'package:bitesbee/ui/submit_otp/submit_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class SubmitOTP extends StatefulWidget {
  const SubmitOTP({Key? key}) : super(key: key);

  @override
  _SubmitOTPState createState() => _SubmitOTPState();
}

class _SubmitOTPState extends State<SubmitOTP> {
  var controller = Get.put(SubmitController());
  var twoController = Get.put(LoginController());
  TextEditingController phone =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<SubmitController>(
         init:  controller,
          builder: (logic) {
        return SingleChildScrollView(
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
                      margin: EdgeInsets.only(left: 35, right: 60),
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
                        "Verification Code",
                        style: TextStyle(
                          fontFamily: GoogleFonts
                              .poppins(
                            fontWeight: FontWeight.w700,
                          )
                              .fontFamily,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    margin_20,
                    Center(
                      child: Container(
                        height: 2,
                        width: 122,
                        decoration: const BoxDecoration(
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
                      margin: const EdgeInsets.only(left: 50, right: 45),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Enter your OTP code",
                              style: TextStyle(
                                color: Color(0XFF929292),
                                fontFamily: GoogleFonts
                                    .poppins()
                                    .fontFamily,
                                fontSize: 12,
                              ),
                            ),
                            margin_30,
                            //////
                            PinCodeTextField(
                              appContext: context,
                              cursorColor: Colors.amber,
                              length: 6,
                              onChanged: (val) {
                                print("value ${val}");
                              },
                              controller: phone,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              pinTheme: PinTheme(
                                  activeColor: Colors.black,
                                  activeFillColor: Colors.black,
                                  selectedColor: Colors.black,
                                  inactiveColor: Colors.black,
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(12),
                                  fieldHeight: 30,
                                  fieldWidth: 30,
                                  fieldOuterPadding: EdgeInsets.symmetric(horizontal: 4)),
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),

                            margin_20,
                            Center(
                              child: Text("Resend OTP",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: GoogleFonts
                                      .poppins()
                                      .fontFamily,
                                  color: Color(0xffFFC545),
                                ),),
                            ),
                            margin_50,

                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 14,
                                color: Color(0xffFFC545).withOpacity(0.2),
                              ),
                            ],
                            borderRadius: const BorderRadius.all(
                                Radius.circular(10)),
                            color: Color(0xffFFC545),
                          ),
                          child: Center(
                            child: Text("Submit",
                              style: TextStyle(
                                fontFamily: GoogleFonts
                                    .poppins(
                                  fontWeight: FontWeight.w700,
                                )
                                    .fontFamily,
                                fontSize: 16,
                              ),),
                          ),
                        ),
                        onTap: () {
                          // VerifyOtp ver =VerifyOtp(
                          //   phone: "9465274589",
                          //   otp: phone.text.toString()
                          // );
                          // controller.verifyOtp(ver);
                          VerifyOtp verify = VerifyOtp(
                            phone: twoController.phoneController.text,
                            otp: phone.text.toString(),
                          );
                          controller.verifyOtp(verify);
                          print("--------------->${controller.verifyOtp(verify)}");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }),
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
