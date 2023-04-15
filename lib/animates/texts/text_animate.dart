import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 140, 6, 173),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 30),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Hello Flutter!'),
              WavyAnimatedText('Hello World!.'),
            ],
            repeatForever: true,
            isRepeatingAnimation: true,
          ),
        ),
      ),
    );
  }
}
