//
// Copyright (c) 2024 Quiverware LLC
//

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiverware',
      home: Scaffold(
        body: HomeContentDesktop(),
        // body: Center(
        //   child: Text('Hello World!!'),
        // ),
      ),
    );
  }
}

// Temporary Home page
//
class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  static const _imageReference =
      'assets/images/futuristic_digital_interface_.jpg';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          _imageReference,
          scale: 1.0, //1.6,
        ),
        Container(
          color: Colors.black45,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const Text(
              'Quiverware',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1250),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.blue[600],
                    child: const Center(
                      child: Text(
                        'Hello World!!',
                        style: TextStyle(
                          fontSize: 48,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
