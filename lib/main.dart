import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp( NewsApp()
  );
}

class NewsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: "News App",
       home: HomePage(),
     );
  }
}
