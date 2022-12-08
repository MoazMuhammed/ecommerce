import 'package:ecommerce/core/reusable%20componant/appbar.dart';
import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          children: [
            const Center(child: AppBarCustom()),
          ],
        ),
      ),
    );
  }
}
