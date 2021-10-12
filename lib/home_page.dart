import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First Flutter App"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Image.network(
              "https://d1fmx1rbmqrxrr.cloudfront.net/cnet/i/edit/2019/12/baby-yoda-the-mandalorian-big.jpg"),
          IconButton(
            onPressed: () {
              setState(() {
                num += 1;
              });
            },
            icon: const Icon(Icons.add),
          ),
          Text(num.toString())
        ],
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
    );
  }
}
