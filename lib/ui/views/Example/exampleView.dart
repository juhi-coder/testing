import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16, left: 16),
        height: 150,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/bulb_icon.svg',
                    height: 48,
                    width: 48,
                  ),
                  const Text(
                    'Light',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/location.svg',
                    height: 32,
                    width: 32,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
