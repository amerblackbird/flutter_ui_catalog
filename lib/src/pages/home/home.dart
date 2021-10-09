import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_catalog/src/pages/home/ui1/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).primaryColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        title: const Text("Flutter UIs catalog"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              "UI 1",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page1()),
              );
            },
          ),
        ],
      ),
    );
  }
}
