import 'package:flutter/material.dart';
import 'package:text_editor/presentation/pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme(
          background: Color.fromRGBO(211, 211, 211, 1),
          onBackground: Color.fromRGBO(42, 49, 53, 1),
          primary: Colors.grey,
          onPrimary: Colors.black,
          error: Colors.redAccent,
          onError: Colors.black,
          secondary: Colors.grey,
          onSecondary: Colors.black,
          brightness: Brightness.light,
          surface: Colors.grey,
          onSurface: Colors.black,
        ),
        toggleableActiveColor: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}
