import 'package:flutter/material.dart';

import 'contact.dart';
import 'gridview_card_page.dart';
import 'gridview_page.dart';
import 'list_view_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    _counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Home"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _counter = 0;
              });
            },
            icon: Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {
              debugPrint("Search");
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Elon Mask"),
              accountEmail: Text("elon@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Grid View"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewCardPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.dynamic_form),
              title: Text("List View"),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewMenu()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.api),
              title: Text("Grid View page"),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewPage()),
                );
              },
            ),
            Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.black38,
            ),
            ListTile(
              leading: Icon(Icons.settings_accessibility),
              title: Text("Contact Me"),
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Counter: $_counter",
          style: TextStyle(
            color: Colors.red,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter = _counter + 1;
          });
        },
        child: Icon(Icons.add_card),
      ),
    );
  }
}
