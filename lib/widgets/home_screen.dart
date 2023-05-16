import 'package:flutter/material.dart';
import 'package:mind_sharp/widgets/game_list_widget.dart';
import 'package:mind_sharp/widgets/settings_list_widget.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _selectedtab = 0;
  static final List<Widget> _homeBarWidgets = <Widget>[
    Text('data', style: TextStyle(fontSize: 40)),
    GameListWidget(),
    Text('data3', style: TextStyle(fontSize: 40))
  ];
  void _selectTab(int index) {
    if (index == _selectedtab) {
      return;
    }
    setState(() {
      _selectedtab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mind Sharp'),
        backgroundColor: Color.fromRGBO(13, 29, 69, 1),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromRGBO(9, 18, 40, 1),
          ),
          Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/background.png'),
                  fit: BoxFit.cover),
            ),
            child: null /* add child content here */,
          ),
          IndexedStack(index: _selectedtab, children: [
            Text('data', style: TextStyle(fontSize: 40)),
            GameListWidget(),
            Text('data3', style: TextStyle(fontSize: 40))
          ])
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(9, 18, 40, 1),
          currentIndex: _selectedtab,
          onTap: _selectTab,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: 'Games'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
