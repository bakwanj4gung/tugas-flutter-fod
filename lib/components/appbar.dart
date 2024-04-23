import 'package:flutter/material.dart';
import 'package:food_app_flutter/components/color.dart';

PreferredSizeWidget appbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    title: const Icon(
      Icons.menu,
      size: 27,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 15),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(
            'images/p3.jpg',
          ),
        )
      )
    ],
    backgroundColor: mainColor,
  );
}