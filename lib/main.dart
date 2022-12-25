import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:veli_capraz/101/button_learns.dart';
import 'package:veli_capraz/101/container_sized_box_learns.dart';
import 'package:veli_capraz/101/image_learns.dart';
import 'package:veli_capraz/101/scaffold_learns.dart';
import 'package:veli_capraz/101/text_learn_views.dart';
import 'package:veli_capraz/101/custom_widget_learn.dart';

import '101/app_bars.dart';
import '101/card_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learns.dart';
import '101/note_demos_views.dart';
import '101/padding_learns.dart';

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
          appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      )),
      home: CustomWidgetLearns(), // calistirmak istedigimiz dosya
    );
  }
}
