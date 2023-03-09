import 'package:flutter/material.dart';
import 'package:veli_capraz/202/package/launch_mixin.dart';

import 'package/loading_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        launchURL('https://pub.dev/packages/url_launcher');
      }),
      body: Column(
        children: [
          Text(
            'Kurt',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const LoadingBar(),
        ],
      ),
    );
  }

  @override
  void name(params) {
    // TODO: implement name
  }
}
