import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/statefull_learns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Core',
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const StatefullLearn(), // calistirmak istedigimiz dosya
    );
  }
}
