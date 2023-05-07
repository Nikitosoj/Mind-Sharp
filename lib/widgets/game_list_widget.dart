// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../resources/resources.dart';

class _Levels {
  final String imageName;
  final String title;
  final String difficult;
  final String result;
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
      result: 'Your Result 0/3 stars',
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 2',
      difficult: 'Difficult : 1',
      result: 'Your Result 0/3 stars',
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 3',
      difficult: 'Difficult : 1',
      result: 'Your Result 0/3 stars',
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 4',
      difficult: 'Difficult : 1',
      result: 'Your Result 0/3 stars',
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 5',
      difficult: 'Difficult : 1',
      result: 'Your Result 0/3 stars',
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 6',
      difficult: 'Difficult : 1',
      result: 'Your Result 0/3 stars',
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 7',
      difficult: 'Difficult : 1',
      result: 'Your Result 0/3 stars',
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 8',
      difficult: 'Difficult : 1',
      result: 'Your Result 0/3 stars',
    ),
    _Levels(
      imageName: AppImage.level1,
      title: 'Level 9',
      difficult: 'Difficult : 1',
      result: 'Your Result 0/3 stars',
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
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                gamelist.title,
                                style: TextStyle(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 25),
                              Text(
                                gamelist.difficult,
                                style: TextStyle(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 25),
                              Text(
                                gamelist.result,
                                style: TextStyle(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
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
