import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import 'GoogleMap.dart';

int activeIndex = 0;
final urlImages = [
  'https://i.ibb.co/BZNmTcR/1.jpg',
  'https://i.ibb.co/p4h7k6Y/2.jpg',
  'https://i.ibb.co/tscjvfY/3.jpg',
  'https://i.ibb.co/K7BScpD/4.jpg',
  'https://i.ibb.co/q95QdYX/5.jpg',
  'https://i.ibb.co/sFGq362/6.jpg',
  'https://i.ibb.co/8dCmvzS/7.jpg',
];

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  IndexState createState() => IndexState();
}

class IndexState extends State<Index> {
  final scaffoldKey = GlobalKey<ScaffoldState>(); // Initialize scaffoldKey here

  final _scrollController = ScrollController();
  GlobalKey homeCnt = GlobalKey();
  GlobalKey katCnt = GlobalKey();

  GlobalKey namaCnt = GlobalKey();

  GlobalKey lokacijaCnt = GlobalKey();

  GlobalKey kontaktCnt = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWideScreen = constraints.maxWidth > 1100;

        return Scaffold(
            key: scaffoldKey, // Set the scaffoldKey for the Scaffold

            body: WebSmoothScroll(
              controller: _scrollController,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: _scrollController,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 1050,
                      child: Stack(
                        children: [
                          // Background image
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(100),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/pozadina1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          // Text, Logo, and Divider on top of the image
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 200,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: isWideScreen ? 150.0 : 50.0,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              'WANNE d.o.o.',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 45,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: isWideScreen ? 150.0 : 50.0,
                                        ),
                                        child: LayoutBuilder(
                                          builder: (context, constraints) {
                                            double maxWidth =
                                                MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    (isWideScreen
                                                        ? 150.0
                                                        : 50.0);
                                            double dividerWidth =
                                                maxWidth > 400.0
                                                    ? 400.0
                                                    : maxWidth;
                                            double rightPadding =
                                                maxWidth > 400.0
                                                    ? 0.0
                                                    : (400.0 - maxWidth);

                                            return SizedBox(
                                              width: dividerWidth,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: rightPadding),
                                                child: Container(
                                                  color: Colors.white,
                                                  height: 2,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: isWideScreen ? 150.0 : 50.0,
                                        ),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              (isWideScreen ? 150.0 : 50.0),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right:
                                                    50.0), // Add right padding
                                            child: Text(
                                              'Dobrodosli u "Wanne" d.o.o., uglednu kompaniju koja se bavi preradom drveta. Naša firma ima dugogodišnje iskustvo u ovom sektoru i ponosimo se što smo postali poznati po kvalitetu naših proizvoda i usluga.',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          // Responsive Navbar with Hamburger Menu
                          ClipRRect(
                            key: homeCnt,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: Container(
                              height: 100,
                              color: Colors.black.withOpacity(0.3),
                              child: Center(
                                child: isWideScreen
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: isWideScreen ? 150.0 : 50.0,
                                            ),
                                            child: Image.asset(
                                              'assets/logo.png',
                                              width: 190,
                                              height: 60,
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            padding: EdgeInsets.only(
                                              right:
                                                  isWideScreen ? 150.0 : 50.0,
                                            ),
                                            child: Row(
                                              children: [
                                                TextButton(
                                                  onPressed: () async {},
                                                  child: Text(
                                                    'Home',
                                                    style: GoogleFonts.poppins(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 6, 184, 121),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 25),
                                                TextButton(
                                                  onPressed: () async {
                                                    if (katCnt.currentContext !=
                                                        null) {
                                                      Scrollable.ensureVisible(
                                                        katCnt.currentContext!,
                                                        alignment:
                                                            0.5, // Adjust the alignment as needed
                                                        duration: const Duration(
                                                            milliseconds:
                                                                500), // Adjust the duration as needed
                                                      );
                                                    }
                                                  },
                                                  child: Text(
                                                    'Kategorije',
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 25),
                                                TextButton(
                                                  onPressed: () async {
                                                    Scrollable.ensureVisible(
                                                      namaCnt.currentContext!,
                                                      alignment:
                                                          0.5, // Adjust the alignment as needed
                                                      duration: const Duration(
                                                          milliseconds:
                                                              500), // Adjust the duration as needed
                                                    );
                                                  },
                                                  child: Text(
                                                    'O nama',
                                                    style: GoogleFonts.poppins(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 6, 184, 121),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 25),
                                                TextButton(
                                                  onPressed: () async {
                                                    Scrollable.ensureVisible(
                                                      lokacijaCnt
                                                          .currentContext!,
                                                      alignment:
                                                          0.5, // Adjust the alignment as needed
                                                      duration: const Duration(
                                                          milliseconds:
                                                              500), // Adjust the duration as needed
                                                    );
                                                  },
                                                  child: Text(
                                                    'Lokacija',
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 25),
                                                TextButton(
                                                  onPressed: () async {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return const CustomDialog();
                                                      },
                                                    );
                                                  },
                                                  child: Text(
                                                    'Kontakt',
                                                    style: GoogleFonts.poppins(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 6, 184, 121),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    : Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: isWideScreen ? 150.0 : 50.0,
                                            ),
                                            child: Image.asset(
                                              'assets/logo.png',
                                              width: 160,
                                              height: 60,
                                            ),
                                          ),
                                          const Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 50.0),
                                            child: IconButton(
                                              icon: const Icon(Icons.menu,
                                                  color: Colors.white),
                                              onPressed: () {
                                                scaffoldKey.currentState!
                                                    .openEndDrawer();
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      key: katCnt,
                      padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(100),
                          topLeft: Radius.circular(100),
                        ),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            if (constraints.maxWidth < 680) {
                              // Use a Column for smaller screens
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    height: 400,
                                    color: const Color(0xFF808080)
                                        .withOpacity(0.1),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 20, 10, 10),
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Image.asset('assets/palete.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 300,
                                    color: const Color(0xFF808080)
                                        .withOpacity(0.1),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Text(
                                              'Palete i ambalaže od drveta svih dimenzija',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 22,
                                                  color: const Color.fromARGB(
                                                      255, 4, 140, 92),
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          SizedBox(
                                            width: 333,
                                            child: Container(
                                              color: const Color(0xFF048C5C),
                                              height: 3,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: Text(
                                              'S našim bogatim iskustvom i tehničkim znanjem, nudimo rješenja prilagođena vašim specifičnim potrebama. Bez obzira trebate li palete za skladište, prijevoz ili potrebe proizvodnje, ili ambalažu koja štiti vaše proizvode tijekom distribucije, mi imamo pravo rješenje za vas.',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              // Use a Row for larger screens
                              return Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 400,
                                      color: const Color(0xFF808080)
                                          .withOpacity(0.1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Image.asset('assets/palete.png'),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 400,
                                      color: const Color(0xFF808080)
                                          .withOpacity(0.1),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center, // Center the content vertically
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start, // Align the text to the left
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Text(
                                              'Palete i ambalaže od drveta svih dimenzija',
                                              style: GoogleFonts.poppins(
                                                fontSize: 32,
                                                color: const Color(0xFF048C5C),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 50, 0),
                                            child: SizedBox(
                                              width: 333,
                                              child: Container(
                                                color: const Color(0xFF048C5C),
                                                height: 3,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 50, 0),
                                            child: Text(
                                              'S našim bogatim iskustvom i tehničkim znanjem, nudimo rješenja prilagođena vašim specifičnim potrebama. Bez obzira trebate li palete za skladište, prijevoz ili potrebe proizvodnje, ili ambalažu koja štiti vaše proizvode tijekom distribucije, mi imamo pravo rješenje za vas.',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    ////////////////////////
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(100),
                          topLeft: Radius.circular(100),
                        ),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            if (constraints.maxWidth < 680) {
                              // Use a Column for smaller screens
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    height: 400,
                                    color: const Color(0xFF808080)
                                        .withOpacity(0.1),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 20, 10, 10),
                                      child: Image.asset('assets/daske.png'),
                                    ),
                                  ),
                                  Container(
                                    height: 300,
                                    color: const Color(0xFF808080)
                                        .withOpacity(0.1),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Text(
                                              'Proizvodi od drveta (daske, štafle)',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 22,
                                                  color: const Color.fromARGB(
                                                      255, 4, 140, 92),
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.end,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          SizedBox(
                                            width: 333,
                                            child: Container(
                                              color: const Color(0xFF048C5C),
                                              height: 3,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: Text(
                                              'U našem asortimanu imamo proizvode od drveta, uključujući daske i štafle, različitih dimenzija i vrsta. Kvalitetno izrađeni proizvodi za razne potrebe i namjene.',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              // Use a Row for larger screens
                              return Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 400,
                                      color: Colors.transparent,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center, // Center the content vertically
                                        crossAxisAlignment: CrossAxisAlignment
                                            .end, // Align the text to the left
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Text(
                                              'Proizvodi od drveta (daske, štafle)',
                                              style: GoogleFonts.poppins(
                                                fontSize: 32,
                                                color: const Color(0xFF048C5C),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 50, 0),
                                            child: SizedBox(
                                              width: 333,
                                              child: Container(
                                                color: const Color(0xFF048C5C),
                                                height: 3,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 50, 0),
                                            child: Text(
                                              'U našem asortimanu imamo proizvode od drveta, uključujući daske i štafle, različitih dimenzija i vrsta. Kvalitetno izrađeni proizvodi za razne potrebe i namjene.',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 400,
                                      color: Colors.transparent,
                                      child: Image.asset('assets/daske.png'),
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(100),
                          topLeft: Radius.circular(100),
                        ),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            if (constraints.maxWidth < 680) {
                              // Use a Column for smaller screens
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    height: 400,
                                    color: const Color(0xFF808080)
                                        .withOpacity(0.1),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 20, 10, 10),
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Image.asset('assets/tr.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 300,
                                    color: const Color(0xFF808080)
                                        .withOpacity(0.1),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Text(
                                              'Usluge transporta',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 22,
                                                  color: const Color.fromARGB(
                                                      255, 4, 140, 92),
                                                  fontWeight: FontWeight.w600),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          SizedBox(
                                            width: 333,
                                            child: Container(
                                              color: const Color(0xFF048C5C),
                                              height: 3,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: Text(
                                              'Nudimo usluge transporta prilagođene vašim potrebama. Brza, sigurna i pouzdana dostava širom regije. Vaš partner za efikasan transport.',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              // Use a Row for larger screens
                              return Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 400,
                                      color: const Color(0xFF808080)
                                          .withOpacity(0.1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Image.asset('assets/tr.png'),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 400,
                                      color: const Color(0xFF808080)
                                          .withOpacity(0.1),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center, // Center the content vertically
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start, // Align the text to the left
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Text(
                                              'Usluge transporta',
                                              style: GoogleFonts.poppins(
                                                fontSize: 32,
                                                color: const Color(0xFF048C5C),
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 50, 0),
                                            child: SizedBox(
                                              width: 333,
                                              child: Container(
                                                color: const Color(0xFF048C5C),
                                                height: 3,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 50, 0),
                                            child: Text(
                                              'Nudimo usluge transporta prilagođene vašim potrebama. Brza, sigurna i pouzdana dostava širom regije. Vaš partner za efikasan transport.',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(80),
                          topLeft: Radius.circular(80),
                        ),
                        child: Container(
                          height: null, // Auto-adjust height based on content

                          color: const Color(0xFF048C5C),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align text to the left
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(28.0),
                                child: Container(
                                  height: 100,
                                  alignment: Alignment.center,
                                  child: Text('O nama',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width > 830
                                        ? 140.0
                                        : 40.0,
                                    20,
                                    MediaQuery.of(context).size.width > 830
                                        ? 140.0
                                        : 40.0,
                                    20),
                                child: Text(
                                  key: namaCnt,
                                  'Glavna djelatnost naše tvrtke "Wanne" je prerada drveta. Imamo potpunu vertikalnu integraciju proizvodnje, što znači da cijeli proces, od prikupljanja sirovina do finalnog proizvoda, obavljamo u vlastitom prostoru. Naša tvrtka se ponosi proizvodnjom visokokvalitetnih proizvoda koji uključuju različite vrste obrađenog drveta, kao što su drvene daske, letve, oblice te mnoge druge proizvode. Također, ističemo se posebnom linijom za izradu paleta koja zadovoljava visoke standarde tržišta. \n\nNaš tim čine drvopreradivači, operateri strojeva, kvalitetni kontrolori i logistički stručnjaci. Njihova stručnost i posvećenost ključni su čimbenici koji osiguravaju visoku kvalitetu naših proizvoda i usluga.\n\nPoslujemo u vlastitom proizvodnom pogonu koji je opremljen najsuvremenijim strojevima za obradu drveta. Tu je i sušara koja omogućuje optimalno sušenje drveta te termička obrada naših proizvoda kako bi se postigla trajnost i kvaliteta. Dodatno, posjedujemo vozni park s četiri kamiona koji nam omogućuju učinkovitu logistiku i brzu isporuku naših proizvoda na tržište.\n\nNaši ambiciozni planovi za budućnost usmjereni su na daljnji razvoj tvrtke Wanne. Želimo proširiti kapacitete proizvodnje kako bismo udovoljili rastućoj potražnji za našim proizvodima. U skladu s tim, imamo planove za proširenje naše proizvodnje i kontinuirano ulaganje u istraživanje i razvoj novih proizvoda.',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 60, 30, 20),
                                child: Container(
                                  height: 100,
                                  alignment: Alignment.center,
                                  child: Text('Dostignuća',
                                      style: GoogleFonts.poppins(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width > 830
                                        ? 140.0
                                        : 40.0,
                                    20,
                                    MediaQuery.of(context).size.width > 830
                                        ? 140.0
                                        : 40.0,
                                    20),
                                child: Container(
                                  height: 100,
                                  alignment: Alignment.center,
                                  child: Text(
                                      'Tvrtka "Wanne" ima ponosnu povijest kontinuiranog rasta i uspjeha. Naša posvećenost kvaliteti i održivosti dovela je do impresivnih dostignuća koja nas stavljaju u sam vrh industrije prerade drveta.Nedavno smo ostvarili značajno povećanje proizvodnje, što je rezultiralo širenjem našeg tržišta i povećanjem broja zadovoljnih klijenata. Naši proizvodi su priznati zbog vrhunske kvalitete i izdržljivosti te su postali preferirani odabir u mnogim sektorima, uključujući građevinsku i logističku industriju.Što se tiče bonitetnih ocjena, s ponosom možemo reći da smo postigli visok rang u financijskoj stabilnosti i solventnosti. Naše poslovanje je temeljeno na odgovornom financijskom upravljanju i očuvanju dugoročne održivosti. Ove impresivne bonitetne ocjene svjedoče o našoj pouzdanosti i pouzdanosti kao poslovnog partnera.Nastavit ćemo graditi na ovim dostignućima i postavljati nove standarde u industriji prerade drveta. Naša predanost kvaliteti, inovacijama i održivosti čini nas tvrtkom koju možete pouzdano birati za svoje potrebe vezane uz drvene proizvode. Hvala vam što ste dio našeg uspjeha i podržavate "Wanne" na našem putovanju prema još većem napretku i rastu.',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal)),
                                ),
                              ),
                              // Add images here
                              LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  if (constraints.maxWidth > 600) {
                                    // When the screen is wide, display the images in a row
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          'assets/cert/1.png',
                                          width: 300,
                                        ),
                                        Image.asset(
                                          'assets/cert/3.png',
                                          width: 300,
                                        ),
                                        // Add more images as needed
                                      ],
                                    );
                                  } else {
                                    // When the screen is small, stack the images vertically
                                    return Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Image.asset(
                                              'assets/cert/1.png',
                                              width: 200,
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/cert/3.png',
                                            width: 200,
                                          ),
                                          // Add more images as needed
                                        ],
                                      ),
                                    );
                                  }
                                },
                              ),
                              LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  if (constraints.maxWidth > 1300) {
                                    // When the screen is wide, display the images in a row
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          'assets/cert/2.png',
                                          width: 600,
                                        ),
                                        Image.asset(
                                          'assets/cert/4.png',
                                          width: 600,
                                        ),
                                        // Add more images as needed
                                      ],
                                    );
                                  } else {
                                    // When the screen is small, stack the images vertically
                                    return Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Image.asset(
                                                'assets/cert/2.png'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Image.asset(
                                              'assets/cert/4.png',
                                              width: 500,
                                            ),
                                          ),
                                          // Add more images as needed
                                        ],
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        final isWideScreen = constraints.maxWidth > 1100;

                        double carouselHeight = isWideScreen ? 800 : 400;

                        return CarouselSlider.builder(
                          itemCount: urlImages.length,
                          itemBuilder: (context, index, realindex) {
                            final urlImage = urlImages[index];
                            return GestureDetector(
                              onTap: () {
                                _showImageDialog(context, urlImage);
                              },
                              child: buildImage(urlImage, index),
                            );
                          },
                          options: CarouselOptions(
                            height: carouselHeight, // Use the calculated height
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            onPageChanged: ((index, reason) =>
                                setState(() => activeIndex = index)),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 12),
                    SizedBox(
                      height: 500, // Adjust the height as needed

                      child: GoogleMap(
                        key: lokacijaCnt,
                      ),
                    ),
                    Container(
                      height: 460, // Set a fixed height for the footer
                      color: const Color.fromARGB(
                          255, 62, 62, 62), // Set the background color to black
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/logo.png',
                              width: 250), // Add your logo image
                          const SizedBox(height: 60),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                'Bosna i Hercegovina / Kruscica bb. / 72250 Vitez',
                                style: GoogleFonts.poppins(
                                  color: Colors
                                      .white, // Set the text color to white
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign
                                    .center, // Center-align the text and allow it to wrap
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Wrap(
                              alignment: WrapAlignment
                                  .center, // Center-align the wrapped text
                              children: [
                                Text(
                                  'Tel.:',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF048C5C),
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' +387 61 848 565   ',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Tel. 2:',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF048C5C),
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' +387 61 496 100   ',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Email:',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF048C5C),
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' wanne.bih@gmail.com',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Radno vrijeme:', // Set the text
                                  style: GoogleFonts.poppins(
                                    color: const Color(
                                        0xFF048C5C), // Set the text color to green (#048c5c)
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' 07:00-15:00  ', // Set the text
                                  style: GoogleFonts.poppins(
                                    color: Colors
                                        .white, // Set the text color to white
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Nedjelja:', // Set the text
                                  style: GoogleFonts.poppins(
                                    color: const Color(
                                        0xFF048C5C), // Set the text color to green (#048c5c)
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' neradna', // Set the text
                                  style: GoogleFonts.poppins(
                                    color: Colors
                                        .white, // Set the text color to white
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 60, 20, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Copyright © 2023 Pilana | WANNE d.o.o.',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign
                                        .center, // Center-align the text and allow it to wrap
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Powered by | WANNE d.o.o. / All rights reserved',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign
                                        .center, // Center-align the text and allow it to wrap
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            endDrawer: Drawer(
              child: Container(
                color: const Color(0xFF808080).withOpacity(
                    0.2), // Set the background color for the drawer
                child: ListView(
                  children: [
                    // Your drawer content here
                    Container(
                      width: double.infinity,
                      height: 91,
                      color: const Color.fromARGB(255, 4, 140, 92),
                      child: Center(
                        child: Image.asset(
                          'assets/fav.png',
                          width: 50, // Set the width of the image
                          height: 50, // Set the height of the image
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Home',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 4, 140, 92),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context); // Close the drawer
                        if (homeCnt.currentContext != null) {
                          Scrollable.ensureVisible(
                            homeCnt.currentContext!,
                            alignment: 0.5, // Adjust the alignment as needed
                            duration: const Duration(
                                milliseconds:
                                    500), // Adjust the duration as needed
                          );
                        }
                      },
                    ),
                    Container(
                      color: const Color(0xFF808080).withOpacity(
                          0.3), // Set the background color for the drawer
                      height: 1, // Set the thickness of the divider
                    ),
                    ListTile(
                      title: Text(
                        'Kategorije',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 4, 140, 92),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context); // Close the drawer
                        if (katCnt.currentContext != null) {
                          Scrollable.ensureVisible(
                            katCnt.currentContext!,
                            alignment: 0.5, // Adjust the alignment as needed
                            duration: const Duration(
                                milliseconds:
                                    500), // Adjust the duration as needed
                          );
                        }
                      },
                    ),
                    Container(
                      color: const Color(0xFF808080).withOpacity(
                          0.3), // Set the background color for the drawer
                      height: 1, // Set the thickness of the divider
                    ),
                    ListTile(
                      title: Text(
                        'O nama',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 4, 140, 92),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context); // Close the drawer
                        Scrollable.ensureVisible(
                          namaCnt.currentContext!,
                          alignment: 0.5, // Adjust the alignment as needed
                          duration: const Duration(
                              milliseconds:
                                  500), // Adjust the duration as needed
                        );
                      },
                    ),
                    Container(
                      color: const Color(0xFF808080).withOpacity(
                          0.3), // Set the background color for the drawer
                      height: 1, // Set the thickness of the divider
                    ),
                    ListTile(
                      title: Text(
                        'Lokacija',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 4, 140, 92),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context); // Close the drawer
                        Scrollable.ensureVisible(
                          lokacijaCnt.currentContext!,
                          alignment: 0.5, // Adjust the alignment as needed
                          duration: const Duration(
                              milliseconds:
                                  500), // Adjust the duration as needed
                        );
                      },
                    ),
                    Container(
                      color: const Color(0xFF808080).withOpacity(
                          0.3), // Set the background color for the drawer
                      height: 1, // Set the thickness of the divider
                    ),
                    ListTile(
                      title: Text(
                        'Kontakt',
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 4, 140, 92),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const CustomDialog();
                          },
                        );
                      },
                    ),
                    Container(
                      color: const Color(0xFF808080).withOpacity(
                          0.3), // Set the background color for the drawer
                      height: 1, // Set the thickness of the divider
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Image.network(
        urlImage, // Make sure urlImage is a valid image URL
        fit: BoxFit.cover,
      ),
    );

Widget buildIndicator() => AnimatedSmoothIndicator(
      effect:
          const ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
      activeIndex: activeIndex,
      count: urlImages.length,
    );
void _showImageDialog(BuildContext context, String imageUrl) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Stack(
          children: [
            Image.network(imageUrl, fit: BoxFit.fill),
            Positioned(
              top: 0,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.close_outlined,
                    color: Colors.white, size: 32),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: 900.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color.fromARGB(255, 4, 140, 92),
            width: 8.0,
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 45, 10, 30),
                  child: Image.asset(
                    'assets/logocrni.png', // Replace with the actual path to your image
                    width: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Poppins',
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Za sve informacije nam se možete obratiti putem E-maila ',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'wanne.bih@gmail.com',
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 4, 140, 92),
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: ' ili nas kontaktirati telefonski na broj',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' +387 61 848 565.',
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 4, 140, 92),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10.0,
              right: 10.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Icon(
                  Icons.close,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
