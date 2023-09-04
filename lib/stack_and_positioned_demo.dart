import 'package:flutter/material.dart';

class StackAndPositionedDemo extends StatefulWidget {
  const StackAndPositionedDemo({super.key});

  @override
  _StackAndPositionedDemoState createState() => _StackAndPositionedDemoState();
}

class _StackAndPositionedDemoState extends State<StackAndPositionedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Stack and positioned Demo'), centerTitle: true),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 30,
              height: 250,
              width: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green[300],
                child: const Text(
                  'Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 60,
              width: 250,
              height: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red[400],
                child: const Text(
                  'Red',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 130,
                left: 90,
                height: 250,
                width: 250,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.purple[300],
                  child: const Text(
                    'Purple',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
