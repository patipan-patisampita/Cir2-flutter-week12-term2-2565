import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text("G-1"),
              ),
            ),
            Container(
              color: Colors.purple,
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text("G-2"),
              ),
            ),
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text("G-3"),
              ),
            ),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text("G-4"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
