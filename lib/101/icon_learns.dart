import 'package:flutter/material.dart';

class IconLearnVier extends StatelessWidget {
  IconLearnVier({super.key});

  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Merhaba'),
        ),
        body: Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: iconColors.froly,
                  size: iconSize.iconSmall,
                )),
            const SizedBox(
              height: 50,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: iconColors.froly,
                  size: iconSize.iconSmall,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: iconColors.froly,
                  size: iconSize.iconSmall,
                ))
          ],
        ));
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = Color(0xffED617A);
}
