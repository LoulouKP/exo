import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _buildHeader(),
            _buildContent(),
            _buildFooter(),
          ],
        ),
      ),
/*
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),

      ],

      ),
      
 */
    bottomNavigationBar:NavigationBar(
      selectedIndex: 3,

    destinations: const <Widget>[
        NavigationDestination(icon: Icon(Icons.home_outlined), label: ''),
        NavigationDestination(icon: Icon(Icons.search_outlined), label: ''),
        NavigationDestination(icon: Icon(Icons.add), label: ''),
        NavigationDestination(icon: Icon(Icons.chat_bubble_outline), label: ''),
        NavigationDestination(icon: Icon(Icons.person), label: ''),

    ],
    ),);

  }


  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Following'),
        Text('For You'),
      ],
    );
  }

  Widget _buildContent() {
    return Column(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            title: Text('@shela_watson'),
            subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            trailing: IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('1.2 M'),
            Text('15K'),
          ],
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Demo Name_imagine dragons'),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
      ],
    );
  }
}
