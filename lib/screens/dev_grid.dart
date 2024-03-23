import 'package:flutter/material.dart';

class DevGrid extends StatelessWidget {
  const DevGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.menu)),
        ],
        title: Text("@karenne_mark",
        ),
        leading: Icon(Icons.person_add_alt_1),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount:3,
          children: <Widget>[
            for (var i = 0; i < 10; i++)
              Image(image: AssetImage('lib/asset/eye.jpg'),
              ),
            ],
        ),
      ),
      bottomNavigationBar:NavigationBar(
        selectedIndex: 3,

        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.search_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.add), label: ''),
          NavigationDestination(icon: Icon(Icons.chat_bubble_outline), label: ''),
          NavigationDestination(icon: Icon(Icons.person), label: ''),

        ],
      ),
    );
  }
}
