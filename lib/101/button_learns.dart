import 'package:flutter/material.dart';

class ButtonLearns extends StatelessWidget {
  const ButtonLearns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: const Text(
              "Kaydet",
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('data'),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Database')),
          InkWell(onTap: () {}, child: const Text('Flutter')),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 2, 2, 2),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                )),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 40, right: 40),
              child: Text(
                'Satın al',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
