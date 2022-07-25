import 'package:flutter/material.dart';
import 'package:rocketlab/screens/home_screen.dart';
import 'package:rocketlab/screens/login_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rocketlab',
      theme: _themeData(),
      initialRoute: '/login',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }

  ThemeData _themeData() {
    return ThemeData(
      primaryColor: const Color(0xFF00875F),
      scaffoldBackgroundColor: const Color(0xff121214),
      backgroundColor: const Color(0xff121214),
      focusColor: const Color(0xff00B37E),
      appBarTheme: const AppBarTheme(
        color: Color(0xff202024),
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF00875F),
          ),
        ),
      ),
      textTheme: const TextTheme(
        headline5: TextStyle(color: Color(0xffE1E1E6)),
        headline6: TextStyle(color: Color(0xffE1E1E6)),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(color: Color(0xff7C7C8A)),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Color(0xff7C7C8A)),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff00B37E)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF75A68)),
        ),
        prefixIconColor: Color(0xff7C7C8A),
      ),
    );
  }
}
