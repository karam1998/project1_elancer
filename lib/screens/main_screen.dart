import 'package:flutter/material.dart';
import 'package:project1/moduls/bn_screen.dart';
import 'package:project1/screens/category_screens/nave_bar_screens/favorite_screen.dart';
import 'package:project1/screens/category_screens/nave_bar_screens/home_screen.dart';
import 'package:project1/screens/category_screens/nave_bar_screens/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<BnScreen> _bnScreens = <BnScreen>[
    const BnScreen(title: ' الرئيسية', widget: HomeScreen()),
    const BnScreen(title: 'المفضلة', widget: FavoriteScreen()),
    const BnScreen(title: 'الإعدادات', widget: SettingScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          _bnScreens[_currentIndex].title,
          style: const TextStyle(
            fontFamily: 'NotoNaskhArabic',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: _bnScreens[_currentIndex].widget,
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
        showUnselectedLabels: false,

        backgroundColor: Colors.transparent,
        elevation: 0,

        // fixedColor: Colors.blue,
        // selectedItemColor: Colors.blue,
        selectedIconTheme: IconThemeData(color: Colors.blue.shade700),
        selectedFontSize: 13,
        selectedLabelStyle: const TextStyle(letterSpacing: 1),

        unselectedItemColor: Colors.grey.shade700,
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade700),
        unselectedFontSize: 12,
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1),

        iconSize: 20,
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.green,
            icon: Icon(Icons.favorite_border_outlined),
            activeIcon: Icon(Icons.favorite),
            label: 'المفضلة',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'الإعدادات',
          )
        ],
      ),
    );
  }
}
