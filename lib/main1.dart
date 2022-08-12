import 'package:flutter/material.dart';
import 'main2.dart';


// branch2
class Main1 extends StatefulWidget {
  @override
  _Main1State createState() => _Main1State();
}

class _Main1State extends State<Main1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SAMPLE Products'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Main2()),
          );
        },
        child: Container(
          child: Center(child: Text('Press me')),
        ),
      ),
    );
  }
}
