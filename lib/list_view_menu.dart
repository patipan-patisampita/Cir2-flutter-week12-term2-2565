import 'package:flutter/material.dart';

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
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("MENU-1"),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
