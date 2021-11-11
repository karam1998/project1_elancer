import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project1/screens/home_screen.dart';
import 'package:project1/screens/launch_screen.dart';
import 'package:project1/screens/login_screen.dart';

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
        '/home_screen':(context) => const HomeScreen(),
        '/login_screen':(context)=> const LoginScreen(),
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
