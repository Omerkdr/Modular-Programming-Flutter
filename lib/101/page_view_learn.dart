import 'package:flutter/material.dart';
import 'package:veli_capraz/101/icon_learns.dart';
import 'package:veli_capraz/101/image_learns.dart';
import 'package:veli_capraz/101/stack_learns.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(_currentPageIndex.toString()),
            ),
            const Spacer(),
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_left),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_right),
            ),
          ],
        ),
        appBar: AppBar(title: const Text('Trabzonspor')),
        body: PageView(
          padEnds: false,
          controller: _pageController,
          onPageChanged: _updatePageIndex,
          children: [
            const ImageLearn(),
            IconLearnVier(),
            const StackLearn(),
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.green),
            Container(color: Colors.black),
          ],
        ));
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
