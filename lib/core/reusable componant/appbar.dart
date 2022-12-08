import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 18.sp),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.drag_handle,
              color: Colors.black87,
              size: 22.sp,
            ),
          ),
          Spacer(),
          Text(
            "Amazon",
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.black87,
              size: 22.sp,
            ),
          ),
        ],
      ),
    );
  }
}
