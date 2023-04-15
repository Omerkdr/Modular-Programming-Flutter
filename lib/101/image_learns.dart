import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String _imagePath =
      'https://upload.wikimedia.org/wikipedia/tr/archive/a/ab/20220929150220%21TrabzonsporAmblemi.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
            height: 100,
            width: 200,
            child: PngImage(name: ImageItems().twoplusWithoutPath)),
        Image.network(
          _imagePath,
          errorBuilder: ((context, error, stackTrace) =>
              const Icon(Icons.abc_outlined)),
        ),
      ]),
    );
  }
}

class ImageItems {
  final String oneplus = 'assets/onePlus.png';
  final String twoplus = 'assets/png/twoplus.png';
  final String twoplusWithoutPath = 'twoplus';
  final String oneplusWithoutPath = 'assets/onePlus.png';
  final String protonAjans = 'assets/protonajans.png';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
      height: 100,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
