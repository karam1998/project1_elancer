import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/moduls/gride_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<GridItem> _list = [
    GridItem('Religious',
        "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=871&q=80",GestureDetector(
          onTap: ()  {print('gest1');},
        )),
    GridItem('Economical',
        "https://images.unsplash.com/photo-1605792657660-596af9009e82?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=802&q=80",GestureDetector(
  onTap: (){print('gest2');},
  )
        ),
    GridItem('influential',
        "https://images.unsplash.com/photo-1527867006146-ff7dcb1a9cb0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80",GestureDetector(onTap: (){print('gest3');})),
    GridItem('inspiring', "https://blog.bonus.ly/hubfs/inspire-teams.png",GestureDetector(onTap: (){print('gest3');},
  )),
    GridItem('Famous',
        "https://images.unsplash.com/photo-1528716321680-815a8cdb8cbe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=476&q=80",GestureDetector(onTap: (){print('gest4');},
  )),
    GridItem('Famous',
        "https://images.unsplash.com/photo-1527867006146-ff7dcb1a9cb0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80",GestureDetector(onTap: (){print('gest5');},
  )),
  ];

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
                          'Categories',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View all',
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.builder(
                    clipBehavior: Clip.antiAlias,
                    shrinkWrap: true,
                    itemCount: _list.length,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.95,
                      crossAxisSpacing: 1.0,
                      mainAxisSpacing: 1.0,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, int index) {
                      return gridContent(
                          _list[index].imageURL, _list[index].name, index,GestureDetector );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  gridContent(String image, String name, int index, Object gestureDetector,) {
    return GestureDetector(
      onTap: (){print(_list[index].gestureDetector);},
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
            child: Image.network(image,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                color: const Color.fromRGBO(250, 250, 182, 1.0),
                colorBlendMode: BlendMode.modulate),
          ),
          // const SizedBox(height: 20,),
          Positioned(
            bottom: 15,
            child: Text(
              name,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  // backgroundColor: Colors.blue.shade400,
                  fontFamily: 'SourceSansPro'),
            ),
          ),
        ],
        ),
      ),
    );
  }
}
