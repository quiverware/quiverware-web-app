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
      title: 'Quiverware LLC',
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // const WelcomeHeader(),
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
              // EventDetails(),
            ],
          ),
        ),
      ],
    );
  }
}
