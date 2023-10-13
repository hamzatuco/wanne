import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'GoogleMap.dart';

int activeIndex = 0;
final urlImages = [
  'https://i.ibb.co/prhbH1j/PHOTO-2023-10-12-18-11-30-2.jpg',
  'https://i.ibb.co/yBDLGrt/PHOTO-2023-10-12-18-11-31-4.jpg',
  'https://i.ibb.co/YjHMxFH/PHOTO-2023-10-12-18-11-31-5.jpg',
  'https://i.ibb.co/YjHMxFH/PHOTO-2023-10-12-18-11-31-5.jpg',
];

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  IndexState createState() => IndexState();
}

class IndexState extends State<Index> {
  final scaffoldKey = GlobalKey<ScaffoldState>(); // Initialize scaffoldKey here
  final List<Widget> appBarActions = [
    TextButton(
      onPressed: () {
        // Handle the Home menu item click
      },
      child: Text(
        'Home',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    TextButton(
      onPressed: () {
        // Handle the Kategorije menu item click
      },
      child: Text(
        'Kategorije',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    TextButton(
      onPressed: () {
        // Handle the Lokacija menu item click
      },
      child: Text(
        'Lokacija',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    // Add more menu items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWideScreen = constraints.maxWidth > 1100;

        return Scaffold(
          key: scaffoldKey, // Set the scaffoldKey for the Scaffold

          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 1050,
                  child: Stack(
                    children: [
                      // Background image
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(100),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.bottomCenter,
                          heightFactor: 0.9, // Crop the bottom 20% of the image

                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    const AssetImage('assets/pozadina1.jpeg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.35),
                                  BlendMode.srcOver,
                                ),
                              ),
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
                                            MediaQuery.of(context).size.width -
                                                (isWideScreen ? 150.0 : 50.0);
                                        double dividerWidth =
                                            maxWidth > 400.0 ? 400.0 : maxWidth;
                                        double rightPadding = maxWidth > 400.0
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
                                      width: MediaQuery.of(context).size.width -
                                          (isWideScreen ? 150.0 : 50.0),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 50.0), // Add right padding
                                        child: Text(
                                          'Kadir je glupglupglupglupglupglupglupglupglupglupglupglup',
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
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Container(
                          height: 120,
                          color: Colors.black.withOpacity(0.4),
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
                                          width: 220,
                                          height: 60,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: EdgeInsets.only(
                                          right: isWideScreen ? 150.0 : 50.0,
                                        ),
                                        child: Row(
                                          children: [
                                            TextButton(
                                              onPressed: () async {},
                                              child: Text(
                                                'Home',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 25),
                                            TextButton(
                                              onPressed: () async {},
                                              child: Text(
                                                'Kategorije',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 25),
                                            TextButton(
                                              onPressed: () async {},
                                              child: Text(
                                                'O nama',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 25),
                                            TextButton(
                                              onPressed: () async {},
                                              child: Text(
                                                'Lokacija',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 25),
                                            TextButton(
                                              onPressed: () async {},
                                              child: Text(
                                                'Kontakt',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
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
                                          width: 220,
                                          height: 60,
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 50.0),
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
                  padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      topLeft: Radius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 400,
                            color: Color(0xFF048C5C).withOpacity(
                                0.8), // Use the hex color code #048c5c
                            child: const Center(
                              child: Text('Ovdje idu ponude',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 400,
                            color: Colors
                                .transparent, // Adjust the background color of the second half
                            child: Image.asset(
                                'your_image_path.jpg'), // Use your image asset path
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 400,
                          color: Colors.transparent,
                          child: const Center(
                            child: Text('Ovdje idu ponude',
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 400,
                          color: Colors
                              .transparent, // Adjust the background color of the second half
                          child: Image.asset(
                              'your_image_path.jpg'), // Use your image asset path
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      topLeft: Radius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 400,
                            color: Colors.lime.withOpacity(0.3),
                            child: const Center(
                              child: Text('Ovdje idu ponude',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 400,
                            color: Colors
                                .transparent, // Adjust the background color of the second half
                            child: Image.asset(
                                'your_image_path.jpg'), // Use your image asset path
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100),
                      topLeft: Radius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1000,
                            color: Colors.lime.withOpacity(0.3),
                            child: const Center(
                              child: Text('Ovdje idu ponude',
                                  style: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CarouselSlider.builder(
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realindex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                      height: 1000,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      onPageChanged: ((index, reason) =>
                          setState(() => activeIndex = index))),
                ),
                SizedBox(height: 12),
                const SizedBox(
                  height: 450, // Adjust the height as needed
                  child: GoogleMap(),
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
                      SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'Bosna i Hercegovina / Kruscica bb. / 72250 Vitez',
                            style: GoogleFonts.poppins(
                              color:
                                  Colors.white, // Set the text color to white
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
                                color: Color(0xFF048C5C),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '+387 123 123 123   ',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Fax:',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF048C5C),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '764853225   ',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Email:',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF048C5C),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'uegyfyus',
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
                                color: Color(
                                    0xFF048C5C), // Set the text color to green (#048c5c)
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              ' 07:00-16:00  ', // Set the text
                              style: GoogleFonts.poppins(
                                color:
                                    Colors.white, // Set the text color to white
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Vikend:', // Set the text
                              style: GoogleFonts.poppins(
                                color: Color(
                                    0xFF048C5C), // Set the text color to green (#048c5c)
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              ' neradni', // Set the text
                              style: GoogleFonts.poppins(
                                color:
                                    Colors.white, // Set the text color to white
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
          endDrawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Home'),
                  onTap: () {
                    // Handle the Home menu item click
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Kategorije'),
                  onTap: () {
                    // Handle the Kategorije menu item click
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Lokacija'),
                  onTap: () {
                    // Handle the Lokacija menu item click
                    Navigator.pop(context);
                  },
                ),
                // Add more menu items as needed
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Image.network(
        urlImage, // Make sure urlImage is a valid image URL
        fit: BoxFit.cover,
      ),
    );

Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
      activeIndex: activeIndex,
      count: urlImages.length,
    );
