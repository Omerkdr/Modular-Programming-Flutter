import 'dart:developer';

import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final response = await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return const _UpdateDialog();
            });
        inspect(response);
      }),
      appBar: AppBar(),
    );
  }
}

class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Kurt Yazılım'),
      content: const Text('Bütün hakları sakdır'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Ok')),
      ],
    );
  }
}

class Keys {
  static const versionUpdate='Vers'
}

class UpdateDialog extends AlertDialog {
   const UpdateDialog({
    super.key, required BuildContext context
    actions : [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel')),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Ok')),
    ],
  });
}
