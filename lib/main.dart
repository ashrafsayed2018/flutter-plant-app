import 'package:flutter/material.dart';
import 'package:tender_swipe_cards/screens/details/details_screen.dart';
import './constants.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'plant app',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: kPrimaryColor),
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      routes: {
        'details': (context) => const DetailsScreen(),
      },
    );
  }
}
