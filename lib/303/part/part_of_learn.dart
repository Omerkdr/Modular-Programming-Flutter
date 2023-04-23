import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';

part './part_appbar.dart';

class PartOfLearn extends StatelessWidget {
  const PartOfLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _PartofAppBar(),
      body: Text('Part Of Learn'),
    );
  }
}
