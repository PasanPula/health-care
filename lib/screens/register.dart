import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            mainAxisSize: MainAxisSize.max,
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
                                    0, 10, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/582/600',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    30, 0, 30, 40),
                                child: Scrollbar(
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
                                              padding: const EdgeInsets.fromLTRB(
                                                  0, 5, 0, 0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  AutoSizeText(
                                                    'Register',
                                                    style: GoogleFonts.outfit(
                                                      fontSize: 32,
                                                      fontWeight: FontWeight.w800,
                                                      color: Colors.black,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  0, 20, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      color: Color(0x4D101213),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: TextFormField(
                                                  // controller: emailAddressController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Name',
                                                    labelStyle:
                                                        GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      backgroundColor:
                                                          Colors.white,
                                                    ),
                                                    hintText:
                                                        'Enter Your Name...',
                                                    hintStyle:
                                                        GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            24, 24, 20, 24),
                                                  ),
                                                  style: GoogleFonts.lexendDeca(
                                                    color:
                                                        const Color(0xFF95A1AC),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  0, 20, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      color: Color(0x4D101213),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: TextFormField(
                                                  // controller: emailAddressController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Phone Number',
                                                    labelStyle:
                                                        GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      backgroundColor:
                                                          Colors.white,
                                                    ),
                                                    hintText:
                                                        'Enter Your Phone Number...',
                                                    hintStyle:
                                                        GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            24, 24, 20, 24),
                                                  ),
                                                  style: GoogleFonts.lexendDeca(
                                                    color:
                                                        const Color(0xFF95A1AC),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  0, 20, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      color: Color(0x4D101213),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: TextFormField(
                                                    // controller: emailAddressController,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'E-Mail Address',
                                                      labelStyle:
                                                          GoogleFonts.lexendDeca(
                                                        color: const Color(
                                                            0xFF95A1AC),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        backgroundColor:
                                                            Colors.white,
                                                      ),
                                                      hintText:
                                                          'Enter your email...',
                                                      hintStyle:
                                                          GoogleFonts.lexendDeca(
                                                        color: const Color(
                                                            0xFF95A1AC),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                12),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                12),
                                                      ),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                              24, 24, 20, 24),
                                                    ),
                                                    style: GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    )),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  0, 20, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      color: Color(0x4D101213),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: TextFormField(
                                                  // controller: emailAddressController,
                                                  // obscureText: !passwordLoginVisibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'Password',
                                                    labelStyle:
                                                        GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      backgroundColor:
                                                          Colors.white,
                                                    ),
                                                    hintText:
                                                        'Please enter your password...',
                                                    hintStyle:
                                                        GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            24, 24, 20, 24),
                                                    suffixIcon: InkWell(
                                                      onTap: () {},
                                                      child: const Icon(
                                                        // passwordLoginVisibility
                                                        //     ? Icons.visibility_outlined
                                                        //     :
                                                        Icons
                                                            .visibility_off_outlined,
                                                        color: Color(0xFF57636C),
                                                        size: 22,
                                                      ),
                                                    ),
                                                  ),
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  0, 20, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      color: Color(0x4D101213),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: TextFormField(
                                                  // controller: emailAddressController,
                                                  // obscureText: !passwordLoginVisibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'Confirm Password',
                                                    labelStyle:
                                                        GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      backgroundColor:
                                                          Colors.white,
                                                    ),
                                                    hintText:
                                                        'Please Confirm Your Password...',
                                                    hintStyle:
                                                        GoogleFonts.lexendDeca(
                                                      color:
                                                          const Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Color(0x00000000),
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            24, 24, 20, 24),
                                                    suffixIcon: InkWell(
                                                      onTap: () {},
                                                      child: const Icon(
                                                        // passwordLoginVisibility
                                                        //     ? Icons.visibility_outlined
                                                        //     :
                                                        Icons
                                                            .visibility_off_outlined,
                                                        color: Color(0xFF57636C),
                                                        size: 22,
                                                      ),
                                                    ),
                                                  ),
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black,
                                                  ),
                                                ),
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
                                                      Navigator.pushNamed(context, '/info');
                                                    },
                                                    child: const Text(
                                                      'Register',
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
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                            ]))
                  ],
                ),
              )),
        ));
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
