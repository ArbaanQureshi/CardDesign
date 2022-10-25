import 'package:design/Second.dart';
import 'package:flutter/material.dart';

import 'MyApp.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}



