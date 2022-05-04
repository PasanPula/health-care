import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  int _currentHorizontalIntValue = 165;
  int _currentHorizontalIntValue2 = 65;
  int _selectedGender = 0;
  int _selectedFood = 0;
  int _selectedSmoker = 0;
  String? selectedValue;
  List<String> items = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];
  ScrollController scollBarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF1F4F8),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom
                  (onPrimary: const Color(0xFFF1F4F8),
                  primary: const Color(0xFFF1F4F8),
                  elevation: 0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                      AutoSizeText('Back',
                          style: GoogleFonts.outfit(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            color: const Color(0xFFF1F4F8),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  ClipPath(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.9,
                      color: Colors.blue,
                    ),
                    clipper: CustomClipPath(),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AutoSizeText(
                                    'Please Complete \n the Following Details.',
                                    style: GoogleFonts.outfit(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                        shadows: [
                                          const BoxShadow(
                                            blurRadius: 4,
                                            color:
                                                Color.fromARGB(120, 53, 52, 52),
                                            offset: Offset(-1, 2),
                                            spreadRadius: 1.5,
                                          )
                                        ]),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30, 0, 30, 40),
                              child: Scrollbar(
                                controller: scollBarController,
                                isAlwaysShown: true,
                                thickness: 8,
                                radius: const Radius.circular(15),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // color: const Color(0xFFF1F4F8),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color(0x2F565555),
                                        offset: Offset(-1, 0),
                                        spreadRadius: 2,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          25, 20, 25, 25),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      AutoSizeText(
                                                        'Gender:',
                                                        style:
                                                            GoogleFonts.outfit(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 10, 0, 0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        FlutterToggleTab(
                                                          width: 60,
                                                          height: 40,
                                                          borderRadius: 10,
                                                          selectedIndex:
                                                              _selectedGender,
                                                          selectedTextStyle:
                                                              GoogleFonts.lexendDeca(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                          unSelectedTextStyle:
                                                              GoogleFonts.lexendDeca(
                                                                  color: Colors
                                                                      .blueAccent,
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                          labels: const [
                                                            "Male",
                                                            "Female"
                                                          ],
                                                          icons: const [
                                                            Icons.boy_rounded,
                                                            Icons.girl_rounded
                                                          ],
                                                          selectedLabelIndex:
                                                              (index) {
                                                            setState(() {
                                                              _selectedGender =
                                                                  index;
                                                            });
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      AutoSizeText(
                                                        'Height:',
                                                        style:
                                                            GoogleFonts.outfit(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 10, 0, 0),
                                                    child: NumberPicker(
                                                      textMapper: (numberText) =>
                                                          "${numberText} cm",
                                                      value:
                                                          _currentHorizontalIntValue,
                                                      minValue: 100,
                                                      maxValue: 250,
                                                      step: 1,
                                                      itemHeight: 40,
                                                      axis: Axis.horizontal,
                                                      onChanged: (value) =>
                                                          setState(() => {
                                                                _currentHorizontalIntValue =
                                                                    value,
                                                                print(
                                                                    _currentHorizontalIntValue)
                                                              }),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            width: 2,
                                                            color:
                                                                Colors.black26),
                                                      ),
                                                      selectedTextStyle:
                                                          GoogleFonts.outfit(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        color:
                                                            Colors.blueAccent,
                                                      ),
                                                      textStyle:
                                                          GoogleFonts.outfit(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      AutoSizeText(
                                                        'Weight:',
                                                        style:
                                                            GoogleFonts.outfit(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 10, 0, 0),
                                                    child: NumberPicker(
                                                      textMapper: (numberText) =>
                                                          "${numberText} Kg",
                                                      value:
                                                          _currentHorizontalIntValue2,
                                                      minValue: 20,
                                                      maxValue: 180,
                                                      step: 1,
                                                      itemHeight: 40,
                                                      axis: Axis.horizontal,
                                                      onChanged: (value) =>
                                                          setState(() => {
                                                                _currentHorizontalIntValue2 =
                                                                    value,
                                                                print(
                                                                    _currentHorizontalIntValue)
                                                              }),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            width: 2,
                                                            color:
                                                                Colors.black26),
                                                      ),
                                                      selectedTextStyle:
                                                          GoogleFonts.outfit(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        color:
                                                            Colors.blueAccent,
                                                      ),
                                                      textStyle:
                                                          GoogleFonts.outfit(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      AutoSizeText(
                                                        'Blood Group:',
                                                        style:
                                                            GoogleFonts.outfit(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 10, 0, 0),
                                                    child:
                                                        CustomDropdownButton2(
                                                      dropdownWidth: 160,
                                                      buttonDecoration:
                                                          BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                width: 2,
                                                                color: Colors
                                                                    .black26,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      buttonWidth: 100,
                                                      buttonHeight: 40,
                                                      hint: 'A+',
                                                      dropdownItems: items,
                                                      value: selectedValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          selectedValue = value;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      AutoSizeText(
                                                        'Food Type:',
                                                        style:
                                                            GoogleFonts.outfit(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 10, 0, 0),
                                                    child: FlutterToggleTab(
                                                      width: 60,
                                                      height: 40,
                                                      borderRadius: 10,
                                                      selectedIndex:
                                                          _selectedFood,
                                                      selectedTextStyle:
                                                          GoogleFonts.lexendDeca(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                      unSelectedTextStyle:
                                                          GoogleFonts.lexendDeca(
                                                              color: Colors
                                                                  .blueAccent,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                      labels: const [
                                                        "Vegitarian",
                                                        "Non-Vegitarian"
                                                      ],
                                                      selectedLabelIndex:
                                                          (index) {
                                                        setState(() {
                                                          _selectedFood = index;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      AutoSizeText(
                                                        'Smoker:',
                                                        style:
                                                            GoogleFonts.outfit(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 10, 0, 0),
                                                    child: FlutterToggleTab(
                                                      width: 60,
                                                      height: 40,
                                                      borderRadius: 10,
                                                      selectedIndex:
                                                          _selectedSmoker,
                                                      selectedTextStyle:
                                                          GoogleFonts.lexendDeca(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                      unSelectedTextStyle:
                                                          GoogleFonts.lexendDeca(
                                                              color: Colors
                                                                  .blueAccent,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                      labels: const [
                                                        "Yes",
                                                        "No"
                                                      ],
                                                      selectedLabelIndex:
                                                          (index) {
                                                        setState(() {
                                                          _selectedSmoker =
                                                              index;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 30, 0, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 4,
                                                          fixedSize: const Size(
                                                              150, 50),
                                                          primary: Colors.black,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  20,
                                                                  0,
                                                                  20,
                                                                  0)),
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  child: const Text(
                                                    'Continue',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ]),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                          ]))
                ],
              ),
            )),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 7.0;
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height / 2);
    path.quadraticBezierTo(size.width / 2, 200, 0, size.height / 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
