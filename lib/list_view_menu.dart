import 'package:flutter/material.dart';

class ListMenu {
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Color? bkcolor;

  const ListMenu({this.title, this.subtitle, this.icon,this.bkcolor});
}

List<ListMenu> menus = [
  const ListMenu(title: "MENU-1", subtitle: "SUB-1", icon: Icons.person,bkcolor:Colors.red),
  const ListMenu(title: "MENU-2", subtitle: "SUB-2", icon: Icons.water_drop,bkcolor:Colors.green),
  const ListMenu(title: "MENU-3", subtitle: "SUB-3", icon: Icons.compost,bkcolor:Colors.blue),
  const ListMenu(title: "MENU-4", subtitle: "SUB-4", icon: Icons.wifi,bkcolor:Colors.orangeAccent),
  const ListMenu(title: "MENU-5", subtitle: "SUB-5", icon: Icons.flutter_dash,bkcolor:Colors.teal),
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
              leading: CircleAvatar(child: Icon(menus[index].icon,color: menus[index].bkcolor)),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                debugPrint("${menus[index].title} ${menus[index].subtitle}");
                if(Navigator.canPop(context)){
                  Navigator.pop<String>(context,menus[index].title);
                }
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
