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
      primarySwatch: Colors.grey,
      primaryColor: const Color(0xFF00875F),
      scaffoldBackgroundColor: const Color(0xff121214),
      backgroundColor: const Color(0xff121214),
      focusColor: const Color(0xff00B37E),
      iconTheme: const IconThemeData(color: Color(0xff7C7C8A)),
      appBarTheme: const AppBarTheme(
        color: Color(0xff202024),
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF00875F),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
        ),
      ),
      textTheme: const TextTheme(
        headline5: TextStyle(color: Color(0xffE1E1E6)),
        headline6: TextStyle(color: Color(0xffE1E1E6)),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
      cardTheme: const CardTheme(
        color: Color(0xff202024),
        elevation: 0,
        margin: EdgeInsets.symmetric(
          vertical: 9,
          horizontal: 0,
        ),
      ),
      listTileTheme: const ListTileThemeData(
        textColor: Color(0xffE1E1E6),
        iconColor: Color(0xffE1E1E6),
      ),
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
