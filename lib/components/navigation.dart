import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_flutter/components/color.dart';
import 'package:food_app_flutter/screens/category.dart';
import 'package:food_app_flutter/screens/favourite.dart';
import 'package:food_app_flutter/screens/home.dart';
import 'package:food_app_flutter/screens/profile.dart';
import 'package:food_app_flutter/screens/search.dart';


class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  int index = 0;
  List screen = [Home(), Category(), Search(), Favourite(), Profile()];
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          setState(() {
            index = 2;
          });
        },
        backgroundColor: mainColor,
        child: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 27,
                  color: index == 0? mainColor : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Icon(
                  Icons.category,
                  size: 27,
                  color: index == 1 ? mainColor : Colors.grey,
                ),
              ),
              const SizedBox(width: 10,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Icon(
                  Icons.favorite,
                  size: 27,
                  color: index == 3 ? mainColor : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Icon(
                  Icons.person,
                  size: 27,
                  color: index == 4 ? mainColor : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: screen[index],
    );
  }
}