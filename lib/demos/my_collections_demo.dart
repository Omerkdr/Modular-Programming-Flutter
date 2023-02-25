import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

//late sonrada ndeger gelecek ama sadece sornadan deger gelcek demek
class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizantal,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingOnlyTop,
          child: Column(
            children: [
              Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
                height: 200,
              ),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_model.title),
                      Text('${_model.price} eth'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    final items = [
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Humanoid Robot',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Humanoid Robot1',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Humanoid Robot2',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Humanoid Robot3',
          price: 3.4),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingOnlyTop = const EdgeInsets.only(top: 10);
  final paddingHorizantal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImage {
  static const imageCollection = 'assets/png/robot.png';
}
