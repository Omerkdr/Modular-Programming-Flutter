import 'package:flutter/material.dart';

class CustomWidgetLearns extends StatelessWidget {
  const CustomWidgetLearns({super.key});
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: CustomFootButton(title: title),
          )),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = EdgeInsets.all(16.0);
}

class CustomFootButton extends StatelessWidget with _ColorsUtility {
  CustomFootButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: redColor,
          shape: const StadiumBorder(),
        ),
        onPressed: () {},
        child: Center(
          child: Padding(
            padding: _PaddingUtility().normal2xPadding,
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: _ColorsUtility().white, fontWeight: FontWeight.bold),
            ),
          ),
        ));
    ;
  }
}
