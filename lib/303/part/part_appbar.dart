part of 'part_of_learn.dart';

class _PartofAppBar extends StatelessWidget with PreferredSizeWidget {
  const _PartofAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Part Of Learn'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Ticker createTicker(TickerCallback onTick) {
    // TODO: implement createTicker
    throw UnimplementedError();
  }
}
