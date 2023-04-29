import 'package:flutter/material.dart';

import '../product/widget/button/answer_button.dart';
import '../product/widget/button/loading_button.dart';
import '../product/widget/callback_dropdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallBackDropDown(onUserSelected: (CallbackUser user) {
            print(user);
          }),
          AnswerButton(
            onNumber: (number) {
              return number % 3 == 1;
            },
          ),
          Center(
            child: LoadingButton(
                title: 'Save',
                onPressed: () async {
                  await Future.delayed(const Duration(seconds: 2));
                }),
          )
        ],
      ),
    );
  }
}

class CallbackUser {
  final String name;
  final int id;

  CallbackUser(this.name, this.id);

  //TODO  Dummy Remove it

  static List<CallbackUser> dummyUsers() {
    return [
      CallbackUser('okk', 456),
      CallbackUser('okk2', 456),
    ];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallbackUser && other.name == name && other.id == id;
  }
}
