import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    return SafeArea(
      child: ListView(
        clipBehavior: Clip.hardEdge,
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
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
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'الاقسام',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GridView.count(
                  childAspectRatio: 1.8,
                  shrinkWrap: true,
                  crossAxisCount: 1,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 0,
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
                                  color:
                                      const Color.fromRGBO(250, 250, 250, 1.0),
                                  colorBlendMode: BlendMode.modulate),
                            ),
                            // const SizedBox(height: 20,),
                            const Positioned(
                              bottom: 2,
                              child: Text(
                                'دعاه',
                                style: TextStyle(
                                    fontSize: 40,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,

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
                                  color:
                                      const Color.fromRGBO(250, 250, 250, 1.0),
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
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,

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
                                  fit: BoxFit.contain,
                                  color:
                                      const Color.fromRGBO(250, 200, 250,3),
                                  colorBlendMode: BlendMode.modulate),
                            ),
                            // const SizedBox(height: 20,),
                            const Positioned(
                              bottom: 2,
                              child: Text(
                                'مؤثرين',
                                style: TextStyle(
                                    fontSize: 40,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,

                                    // backgroundColor: Colors.blue.shade400,
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
    );
  }
}
