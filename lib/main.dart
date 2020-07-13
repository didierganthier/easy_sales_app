import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text('Easy Sales'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Didier Ganthier'),
              accountEmail: Text('didierganthierperan@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage('https://avatars1.githubusercontent.com/u/45739963?s=460&u=959eacb50e227e6ff5b125d9a1e92aa0856ec2a2&v=4')
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.pink),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.pink),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.pink),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.pink),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.pink),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
