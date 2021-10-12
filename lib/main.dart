import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("My First Flutter App"),
            centerTitle: true,
            backgroundColor: Colors.lightGreen,
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.green[600],
            currentIndex: index,
            onTap: (x) {
              setState(() {
                index = x;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: "Account",
                icon: Icon(Icons.account_circle_outlined),
              ),
              BottomNavigationBarItem(
                label: "Infinite",
                icon: Icon(Icons.all_inclusive_outlined),
              ),
            ],
            backgroundColor: Colors.lightGreen,
          ),
        ),
        debugShowCheckedModeBanner: false);
  }
}
