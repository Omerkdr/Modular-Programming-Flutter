import 'package:flutter/material.dart';

import '../../product/mixin/navigator_mixin.dart';
import '../../product/navigator/navigator_routes.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({Key? key}) : super(key: key);

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView>
    with NavigatorMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
          child: const Icon(Icons.abc_rounded),
          onPressed: () async {
            //router.pushToPage(NavigateRoutes.detail, arguments: "okk8");
            // await NavigatorManager.instance.pushToPage(NavigateRoutes.detail, arguments: "vb10");
            Navigator.of(context)
                .pushNamed(NavigateRoutes.detail.withParaf, arguments: "Ödeme");
          }),
      appBar: AppBar(title: Text(toString())),
    );
  }
}
