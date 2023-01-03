import 'package:flutter/material.dart';

import 'gridview_card_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Home"),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Delete");
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
              leading: Icon(Icons.apps),
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
          ],
        ),
      ),
    );
  }
}
