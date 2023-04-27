import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_capraz/303/navigator/navigate_home_detail_view.dart';
import 'package:veli_capraz/product/constant/project_items.dart';
import 'package:veli_capraz/product/global/resource_context.dart';
import 'package:veli_capraz/product/global/theme_notifer.dart';

import '303/lottie_learn.dart';
import '303/navigator/navigate_home_view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(create: (_) => ResourceContext()),
      ChangeNotifierProvider<ThemeNotifer>(
        create: (context) => ThemeNotifer(),
      )
    ],
    builder: (context, child) => const MyApp(),
  )); //Osman
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ProjectItems.projectName,
        debugShowCheckedModeBanner: false,
        theme: context.watch<ThemeNotifer>().currentTheme,

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
        // initialRoute: '/',
        routes: {
          "/": (context) => const LottieLearn(), //initial açıldıpı yer demek

          "/home": (context) => const NavigateHomeView(),
          "/homeDetail": (context) => const NavigateHomeDetail(),
        },
        home: const LottieLearn() // calistirmak istedigimiz dosya
        );
  }
}
