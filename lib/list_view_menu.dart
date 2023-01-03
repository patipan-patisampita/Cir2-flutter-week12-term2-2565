import 'package:flutter/material.dart';

class ListMenu {
  final String? title;
  final String? subtitle;
  final IconData? icon;

  const ListMenu({this.title, this.subtitle, this.icon});
}

List<ListMenu> menus = [
  const ListMenu(title: "MENU-1", subtitle: "SUB-1", icon: Icons.person),
  const ListMenu(title: "MENU-2", subtitle: "SUB-2", icon: Icons.water_drop),
  const ListMenu(title: "MENU-3", subtitle: "SUB-3", icon: Icons.compost),
  const ListMenu(title: "MENU-4", subtitle: "SUB-4", icon: Icons.wifi),
  const ListMenu(title: "MENU-5", subtitle: "SUB-5", icon: Icons.flutter_dash),
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
              title: Text("${menus[index].title}"),
              subtitle: Text("${menus[index].subtitle}"),
              leading: CircleAvatar(child: Icon(menus[index].icon)),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                debugPrint("${menus[index].title} ${menus[index].subtitle}");
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider(color: Colors.blue);
          },
          itemCount: menus.length,
        ),
      ),
    );
  }
}
