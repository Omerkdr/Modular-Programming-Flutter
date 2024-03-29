import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '303/mobx_image_picker/view/mobx_image_upload_view.dart';
import 'product/constant/project_items.dart';
import 'product/global/resource_context.dart';
import 'product/global/theme_notifer.dart';
import 'product/navigator/navigator_custom.dart';
import 'product/navigator/navigator_manager.dart';

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

class MyApp extends StatelessWidget with NavigatorCustom {
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
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (context) {
      //     return const LottieLearn();
      //   });
      // },
      // ikisinden birini kullanmak

      // routes: NavigatorRoures().items,

      // builder: (context,widget){},
      onGenerateRoute: onGenerateRoute,
      navigatorKey: NavigatorManager.instance.navigatorGlobalKey,
      home: const MobxImageUpload(),

      // home: const LottieLearn() // calistirmak istedigimiz dosya
    );
  }
}
