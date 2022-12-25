import 'package:flutter/material.dart';

class TextLearnViews extends StatelessWidget {
  TextLearnViews({Key? key, this.userName}) : super(key: key);
  final String name = 'Kurt';

  final String? userName;

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hoşgeldiniz $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            textScaleFactor: 1.2,
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
              wordSpacing: 2,
              height: 1,
              color: Colors.white,
              letterSpacing: 2,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Hoşgeldiniz $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            textScaleFactor: 1.2,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                wordSpacing: 2,
                height: 1,
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'Merhaba $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            textScaleFactor: 1.2,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
          Text(userName ?? ''),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectsStyless {
  static TextStyle welcomeStyle = const TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      wordSpacing: 2,
      height: 1,
      color: Colors.white,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.orange;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
