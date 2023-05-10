import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LevelDetailsWidget extends StatefulWidget {
  const LevelDetailsWidget({super.key});

  @override
  State<LevelDetailsWidget> createState() => _LevelDetailsWidgetState();
}

class _LevelDetailsWidgetState extends State<LevelDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
