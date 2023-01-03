import 'package:flutter/material.dart';

class ListMenu {
  final String? title;
  final String? subtitle;
  final IconData? icon;

  const ListMenu({this.title, this.subtitle, this.icon});
}

List<ListMenu> menus = [
  const ListMenu(title: "MENU-1", subtitle: "SUB-1", icon: Icons.person)
];

class ListViewMenu extends StatelessWidget {
  const ListViewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Menu"),
      ),
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("MENU-1"),
              subtitle: Text("SUB-1"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                debugPrint("MENU-1");
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider(color: Colors.blue);
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
