// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardLearns extends StatelessWidget {
  const CardLearns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            // ignore: sort_child_properties_last
            child: const SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text("Satın Al")),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          Card(
            margin: ProjectMargins.cardMargin,
            // ignore: sort_child_properties_last
            child: const SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text("Satın Al")),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          _CustomCard(
            child: const SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text("Satın Al")),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  @override
  _CustomCard({super.key, required this.child});
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      // ignore: sort_child_properties_last
      child: child,
      shape: roundedRectangleBorder,
    );
  }
}
