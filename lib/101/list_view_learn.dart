import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 300,
          ),
          const Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.white,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.white,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                  Container(
                    color: Colors.white,
                    height: 100,
                    width: 100,
                  ),
                ],
              )),
          const Divider(),
          Container(
            color: Colors.red,
            width: 100,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const _ListDemo()
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo();

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    // TODO: implement initState

    print('Hello');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('Exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
