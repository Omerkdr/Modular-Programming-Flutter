import 'package:flutter/material.dart';

const kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  // Text('data', style: context.textTheme().displayLarge)

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = false;

  late AnimationController controller; // late varsa init state

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _placeHolderWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _changeVisible();
            controller.animateTo(_isVisible ? 1 : 0);
          },
        ),
        body: Column(
          children: [
            ListTile(
              title: AnimatedOpacity(
                  duration: _DurationItems.durationLow,
                  opacity: _isOpacity ? 1 : 0,
                  child: const Text('Escape')),
              trailing: IconButton(
                onPressed: () {
                  _changeOpacity();
                },
                icon: const Icon(Icons.precision_manufacturing_rounded),
              ),
            ),
            AnimatedIcon(
              icon: AnimatedIcons.view_list,
              progress: controller,
            ),
            AnimatedContainer(
                duration: _DurationItems.durationLow,
                height:
                    _isVisible ? 0 : (MediaQuery.of(context).size.width) * 0.2,
                width: (MediaQuery.of(context).size.height) * 0.2,
                color: Colors.purple,
                margin: const EdgeInsets.all(15)),
            Expanded(
                child: Stack(
              children: const [
                AnimatedPositioned(
                  top: 20,
                  curve: Curves.elasticInOut,
                  duration: _DurationItems.durationLow,
                  child: Text('data'),
                )
              ],
            )),
            Expanded(
              child: AnimatedList(itemBuilder: (context, index, animation) {
                return const Text('Data');
              }),
            ),
            AnimatedDefaultTextStyle(
                style: (_isVisible
                        ? context.textTheme().displayLarge
                        : context.textTheme().titleMedium) ??
                    const TextStyle(),
                duration: _DurationItems.durationLow,
                child: const Text('Kurt')),
          ],
        ));
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: _DurationItems.durationLow,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
