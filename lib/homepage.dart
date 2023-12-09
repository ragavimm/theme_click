import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_click/sample.dart';
import 'package:theme_click/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
      return Scaffold(
          appBar: AppBar(
          title: Text(themeNotifier.isDark ? "Dark Mode" : "Light Mode"),
    actions: [
    IconButton(
    icon: Icon(themeNotifier.isDark
    ? Icons.nightlight_round
        : Icons.wb_sunny),
    onPressed: () {
    themeNotifier.isDark
    ? themeNotifier.isDark = false
        : themeNotifier.isDark = true;
    })
    ],
    ),
              body: Center(
                child: Column(
                  children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Your  Name",
                      ),
                    ),
                  ),
                    Container(
                      child: TextButton(onPressed: () {

                      },
                      child: Text("SUBMIT"),),
                    ),
                  ],
                ),

      ),
      );

  }
    );

}
}
