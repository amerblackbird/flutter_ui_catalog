import 'package:flutter/material.dart';

import 'pages/home/home.dart';

class FlutterUICatalog extends StatelessWidget {
  const FlutterUICatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
