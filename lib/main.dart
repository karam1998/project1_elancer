import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project1/screens/category_screens/influencers_screen.dart';
import 'package:project1/screens/category_screens/muslems_screen.dart';
import 'package:project1/screens/category_screens/reciters_screen.dart';
// import 'package:project1/screens/category_screens/nave_bar_screens/home_screen.dart';
import 'package:project1/screens/launch_screen.dart';
import 'package:project1/screens/login_screen.dart';
import 'package:project1/screens/main_screen.dart';
import 'package:project1/screens/out_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context)=> const LaunchScreen(),
        // '/home_screen':(context) => const HomeScreen(),
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
        '/login_screen':(context)=> const LoginScreen(),
        '/muslem_screen':(context)=> const MuslemScreen(),
        '/reciters_screen':(context)=> const RecitersScreen(),
        '/influencers_screen':(context)=> const InfluencersScreen(),
        '/main_screen': (context) => const MainScreen(),
      },
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('en'),
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
    );
  }
}
