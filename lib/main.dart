import 'package:ecommerce/Usser%20Interface/login_screen.dart';
import 'package:ecommerce/Usser%20Interface/main_screen.dart';
import 'package:ecommerce/core/Themes/theme_constant.dart';
import 'package:ecommerce/core/Themes/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void dispose() {
    themeManager.removeListener((themeListener));
    super.dispose();
  }
  @override
  void initState() {
    themeManager.addListener((themeListener));
    super.initState();
  }
  themeListener(){
    if (mounted) {
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2 ) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme:lightTheme ,
        darkTheme: darkTheme,
        themeMode: themeManager.themeMode,
        home:  LoginScreen());
      });
  }
}
