import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Color? color;
  final GestureTapCallback? onTap;

  const MyCard({Key? key, this.title, this.icon, this.color, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(20)
          )
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(
            Radius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: 62,color: Colors.white),
            Text(title!,style: TextStyle(color: Colors.white))
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
