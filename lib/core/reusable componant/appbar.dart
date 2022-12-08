import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({Key? key, required this.iconLeft, required this.iconRight,}) : super(key: key);
  final IconData iconLeft;
  final IconData iconRight;

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.iconLeft),
        Text("A7a"),
        Icon(widget.iconRight)
      ],
    );
  }
}
