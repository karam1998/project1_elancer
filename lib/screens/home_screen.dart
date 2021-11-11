import 'package:flutter/material.dart';
import 'package:project1/moduls/bn_screen.dart';
import 'package:project1/moduls/gride_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<BnScreen> _bnScreens = <BnScreen>[
    const BnScreen(title: 'Home', widget: HomeScreen()),
    // const BnScreen(title: 'Favorites', widget: FavoriteScreen()),
    // const BnScreen(title: 'Articles', widget: ArticlesScreen()),
    // const BnScreen(title: 'Settings', widget: SettingsScreen()),
  ];
  final List<GridItem> _list = [
    GridItem('Religious',
        "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=871&q=80"),
    GridItem('Economical',
        "https://images.unsplash.com/photo-1605792657660-596af9009e82?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=802&q=80"),
    GridItem('influential',
        "https://images.unsplash.com/photo-1527867006146-ff7dcb1a9cb0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80"),
    GridItem('inspiring', "https://blog.bonus.ly/hubfs/inspire-teams.png"),
    GridItem('Famous',
        "https://images.unsplash.com/photo-1528716321680-815a8cdb8cbe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=476&q=80"),
    GridItem('Famous',
        "https://images.unsplash.com/photo-1527867006146-ff7dcb1a9cb0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'SocialBook',
          style: TextStyle(
            color: Colors.green,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     // print('hello');
        //   },
        // ),
        actions: [
          Container(
            margin: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 25.0,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              iconSize: 25.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [

          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      /**image: DecorationImage(
                                image: AssetImage(),
                                fit: BoxFit.cover
                            )*/
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.green.withOpacity(.8),
                                Colors.blue.withOpacity(.8),
                              ])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            "Category of your social life",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40,
                            margin: const EdgeInsets.symmetric(horizontal: 80),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "Booking Now",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, int index) {
                        return gridContent(
                            _list[index].imageURL, _list[index].name, index);
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        // type: BottomNavigationBarType.shifting,
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: true,
        showUnselectedLabels: true,

        backgroundColor: Colors.white,
        elevation: 10,

        // fixedColor: Colors.pink,
        selectedItemColor: Colors.blue,
        selectedIconTheme: IconThemeData(color: Colors.blue.shade700),
        selectedFontSize: 14,
        selectedLabelStyle:
        const TextStyle(letterSpacing: 2),
        unselectedItemColor: Colors.grey,
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade700),
        unselectedFontSize: 12,
        unselectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1),
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.favorite_border_outlined),
            activeIcon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }

  gridContent(String image, String name, int index) {
    return GestureDetector(
      // onTap: (){print('tabbed');},
      // onDoubleTap: (){print('double click');},
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        // color: Colors.green,
        child: Stack(alignment: Alignment.center, children: [
          Center(
            child: Image.network(image,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                color: const Color.fromRGBO(212, 231, 212, 1.0),
                colorBlendMode: BlendMode.modulate),
          ),
          // const SizedBox(height: 20,),
          Positioned(
            bottom: 15,
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                backgroundColor: Colors.white54,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
