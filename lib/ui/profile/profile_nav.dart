// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class NavigationProfile extends StatefulWidget {
  const NavigationProfile({Key? key}) : super(key: key);

  @override
  _NavigationProfileState createState() => _NavigationProfileState();
}

class _NavigationProfileState extends State<NavigationProfile> {
  late  File imageFile;
  ImagePicker imagePicker = ImagePicker();
  late String image = "https://www.google.com/search?q=katherine+langford&sourc"
      "e=lnms&tbm=isch&sa=X&ved=2ahUKEwjirquYndjzAhVF7HMBH"
      "V5CBRwQ_AUoAXoECAEQAw&biw=1280&bih=612&dpr=1#imgrc=Tqj5mPvE2-aWEM";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageFile = File("");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ).fontFamily,
                ),
              ),
            ),
          ),
          margin_50,
          Container(
              child: imageFile != null
                  ? Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        image: DecorationImage(
                          image: FileImage(imageFile),
                        ),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        image,
                        width: 200.0,
                        height: 200.0,
                      ),
                    )),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(8.0),
          //   child: Image.asset("image/",
          //     width: 200.0,
          //     height: 200.0,
          //   ),
          // ),
          margin_20,
          InkWell(
            child: Center(
              child: Text(
                "Change Profile Picture",
                style: TextStyle(
                  color: Color(0xffFFC545),
                  fontSize: 12,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
            ),
            onTap: () {
              imageSource(ImageSource.gallery);
            },
          ),
          margin_20,
          SingleChildScrollView (
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Align(
                        alignment:  Alignment.topLeft,
                        child: Text("Name",
                          style: TextStyle(
                            color: Color(0xffAEAEAE),
                            fontSize: 14,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),),
                      ),
                      margin_20,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Ram Pal",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ),
                      margin_5,
                      Container(
                        height: 1,
                        color: Color(0xffAEAEAE),
                      ),
                      margin_20,
                      Align(
                        alignment:  Alignment.topLeft,
                        child: Text("Email",
                          style: TextStyle(
                            color: Color(0xffAEAEAE),
                            fontSize: 14,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),),
                      ),
                      margin_20,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("rampal@gmail.com",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ),
                      margin_5,
                      Container(
                        height: 1,
                        color: Color(0xffAEAEAE),
                      ),
                      margin_20,
                      Align(
                        alignment:  Alignment.topLeft,
                        child: Text("Mobile Number",
                          style: TextStyle(
                            color: Color(0xffAEAEAE),
                            fontSize: 14,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),),
                      ),
                      margin_20,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("+9152759952",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ),
                      margin_5,
                      Container(
                        height: 1,
                        color: Color(0xffAEAEAE),
                      ),
                      margin_50,
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
                            child: Text("Save",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),),
                          ),
                        ),
                        onTap: (){
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
    );
  }

  imageSource(ImageSource source) async {
    final pickedFile = await imagePicker.pickImage(source: source);
    setState(() {
      imageFile = File(pickedFile!.path);
    });
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

  var margin_10 = const SizedBox(
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
