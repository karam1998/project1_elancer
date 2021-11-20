import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/screens/category_screens/famouse_screen.dart';
import 'package:project1/screens/category_screens/influencers_screen.dart';
import 'package:project1/screens/category_screens/muslems_screen.dart';
import 'package:project1/screens/category_screens/reciters_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(30),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: const Text(
      //     'SocialBook',
      //     style: TextStyle(
      //       color: Colors.blue,
      //       fontSize: 28.0,
      //       fontWeight: FontWeight.bold,
      //       letterSpacing: 1,
      //       fontFamily: 'SourceSansPro'
      //     ),
      //   ),
      //   centerTitle: true,
      //   // leading: IconButton(
      //   //   icon: const Icon(Icons.menu),
      //   //   onPressed: () {
      //   //     // print('hello');
      //   //   },
      //   // ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.search),
      //       iconSize: 25.0,
      //       color: Colors.blue,
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.menu),
      //       iconSize: 25.0,
      //       color: Colors.blue,
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: ListView(
          clipBehavior: Clip.hardEdge,
          shrinkWrap: true,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset('images/Logo.svg'),

                  // Container(
                  //   width: double.infinity,
                  //   height: 130,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(40),
                  //     /**image: DecorationImage(
                  //               image: AssetImage(),
                  //               fit: BoxFit.cover
                  //           )*/
                  //   ),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
                  //         gradient: LinearGradient(
                  //             begin: Alignment.bottomRight,
                  //             colors: [
                  //               Colors.blueAccent.withOpacity(.2),
                  //               Colors.blue.withOpacity(.8),
                  //             ])),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: <Widget>[
                  //         const Text(
                  //           "Category of your social life",
                  //           style: TextStyle(
                  //               color: Colors.black,
                  //               fontSize: 25,
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         Center(
                  //           child: Text(
                  //             "Booking Now",
                  //             style: TextStyle(
                  //                 fontSize: 25,
                  //                 color: Colors.grey[900],
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 30,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'الاقسام',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NotoNaskhArabic'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'عرض الكل',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoNaskhArabic'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.count(
                    childAspectRatio: 1.8,
                    shrinkWrap: true,
                    crossAxisCount: 1,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(5),
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 10,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const MuslemScreen();
                            },
                          ));
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // color: Colors.green,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Center(
                                child: Image.asset('images/daia.jpg',
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    color: const Color.fromRGBO(
                                        250, 250, 182, 1.0),
                                    colorBlendMode: BlendMode.modulate),
                              ),
                              // const SizedBox(height: 20,),
                              const Positioned(
                                bottom: 2,
                                child: Text(
                                  'وُعَّاظ',
                                  style: TextStyle(
                                      fontSize: 40,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      backgroundColor: Colors.blueAccent,

                                      // backgroundColor: Colors.blue.shade400,
                                      fontFamily: 'NotoNaskhArabic'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const RecitersScreen();
                            },
                          ));
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // color: Colors.green,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Center(
                                child: Image.asset('images/qree.jpg',
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    color: const Color.fromRGBO(
                                        250, 250, 182, 1.0),
                                    colorBlendMode: BlendMode.modulate),
                              ),
                              // const SizedBox(height: 20,),
                              const Positioned(
                                bottom: 2,
                                child: Text(
                                  'قُرّاء',
                                  style: TextStyle(
                                      fontSize: 40,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      backgroundColor: Colors.blueAccent,

                                      // backgroundColor: Colors.blue.shade400,
                                      fontFamily: 'NotoNaskhArabic'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const InfluencersScreen();
                            },
                          ));
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // color: Colors.green,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Center(
                                child: Image.asset('images/influncer1.png',
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    color: const Color.fromRGBO(
                                        250, 250, 182, 1.0),
                                    colorBlendMode: BlendMode.modulate),
                              ),
                              // const SizedBox(height: 20,),
                              const Positioned(
                                bottom: 2,
                                child: Text(
                                  'مؤثرون',
                                  style: TextStyle(
                                      fontSize: 40,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      backgroundColor: Colors.blueAccent,

                                      // backgroundColor: Colors.blue.shade400,
                                      fontFamily: 'NotoNaskhArabic'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const FamouseScreen();
                            },
                          ));
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // color: Colors.green,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Center(
                                child: Image.asset('images/famous.png',
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    color: const Color.fromRGBO(
                                        250, 250, 182, 1.0),
                                    colorBlendMode: BlendMode.modulate),
                              ),
                              // const SizedBox(height: 20,),
                              const Positioned(
                                bottom: 2,
                                child: Text(
                                  'اصحاب الروايه',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 3,
                                      color: Colors.white,
                                      backgroundColor: Colors.blueAccent,
                                      fontFamily: 'NotoNaskhArabic'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
