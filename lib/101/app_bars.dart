import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  final String _title = "Merhaba";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
          leading: const Icon(Icons.chevron_left),
          // centerTitle: true,
          // backgroundColor: Colors.transparent,
          // elevation: 0,
          // systemOverlayStyle: SystemUiOverlayStyle.light,
          // actionsIconTheme: const IconThemeData(color: Colors.red, size: 30),
          //toolbarTextStyle: const TextStyle(color: Colors.blue),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_email_unread_sharp),
            ),
            //const Center(child: CircularProgressIndicator())
          ],
        ),
        body: Column(
          children: const [],
        ));
  }
}
