import 'package:flutter/material.dart';
import 'package:mind_sharp/widgets/result_circle.dart';
import '../resources/resources.dart';

class _Levels {
  final String imageName;
  final String title;
  final String difficult;
  final double result;
  _Levels({
    required this.imageName,
    required this.title,
    required this.difficult,
    required this.result,
  });
}

class GameListWidget extends StatelessWidget {
  GameListWidget({super.key});
  final _gamelist = [
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 1',
      difficult: 'Difficult : 1',
      result: 100,
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 2',
      difficult: 'Difficult : 1',
      result: 25,
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 3',
      difficult: 'Difficult : 1',
      result: 45,
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 4',
      difficult: 'Difficult : 1',
      result: 0,
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 5',
      difficult: 'Difficult : 1',
      result: 27,
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 6',
      difficult: 'Difficult : 1',
      result: 75,
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 7',
      difficult: 'Difficult : 1',
      result: 0,
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 8',
      difficult: 'Difficult : 1',
      result: 0,
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 9',
      difficult: 'Difficult : 1',
      result: 0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 50),
        itemCount: _gamelist.length,
        itemExtent: 165,
        itemBuilder: (BuildContext, int index) {
          final gamelist = _gamelist[index];
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(16, 28, 59, 1),
                      border: Border.all(color: Colors.black.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(image: AssetImage(gamelist.imageName)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              gamelist.title,
                              style: TextStyle(color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 15),
                            Text(
                              gamelist.difficult,
                              style: TextStyle(color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 15),
                            Container(
                                width: 75,
                                height: 75,
                                child: ResultCircleWidget(
                                    percent: gamelist.result)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        print('object');
                      },
                    ),
                  )
                ],
              ));
        });
  }
}
