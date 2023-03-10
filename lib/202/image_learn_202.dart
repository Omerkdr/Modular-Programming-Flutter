import 'package:flutter/material.dart';
import 'package:veli_capraz/202/animated_learn.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    context.textTheme().titleMedium;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ImagePaths.javascript_illustration.toWidget(
        height: 125,
      ),
    );
  }
}

enum ImagePaths {
  //secilen image
  // ignore: constant_identifier_names
  javascript_illustration
}

extension ImagePathExtension on ImagePaths {
  //enum ile secmek icin returnle
  String path() {
    return 'assets/png/$name.png';
  }

  Widget toWidget({double height = 24}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
