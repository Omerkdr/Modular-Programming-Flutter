import 'package:flutter/material.dart';

import '202/theme/light_theme.dart';
import '303/tabbar_advance.dart';

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
        theme: LightTheme().theme,

        // theme: ThemeData.dark().copyWith(
        //     tabBarTheme: const TabBarTheme(
        //       labelColor: Colors.blue,
        //       unselectedLabelColor: Colors.white,
        //       indicatorSize: TabBarIndicatorSize.label,
        //     ),
        //     bottomAppBarTheme: const BottomAppBarTheme(
        //       shape: CircularNotchedRectangle(),
        //     ),
        //     listTileTheme:
        //         const ListTileThemeData(contentPadding: EdgeInsets.zero),
        //     progressIndicatorTheme:
        //         const ProgressIndicatorThemeData(color: Colors.white),
        //     appBarTheme: const AppBarTheme(
        //       systemOverlayStyle: SystemUiOverlayStyle.light,
        //       centerTitle: true,
        //       backgroundColor: Colors.transparent,
        //       e levation: 0,
        //     )),
        home: const TabAdvanceLearn() // calistirmak istedigimiz dosya
        );
  }
}
