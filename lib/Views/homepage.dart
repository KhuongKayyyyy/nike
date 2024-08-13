import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nike/Views/landing.dart';
import 'package:nike/Views/profile_page.dart';
import 'package:nike/Views/shop_page.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int myCurrentIndex = 0;
  List pages = const [
    Landing(),
    ShopPage(),
    ProfilePage(),
    ProfilePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              extendBody: true,
              body: pages[myCurrentIndex],
              bottomNavigationBar: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.2),
                        offset:const Offset(0,20)
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child:  BottomNavigationBar(
                    elevation: 0,
                    currentIndex: myCurrentIndex,
                    iconSize:25,
                    onTap: (index){
                      setState(() {
                        myCurrentIndex = index;
                      });
                    },
                    selectedItemColor: Colors.black,
                    unselectedItemColor: Colors.grey[300]!,
                    items: const [
                      BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: "Home"),
                      BottomNavigationBarItem(icon: Icon(Icons.search), label: "Shop"),
                      BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: "Favorite"),
                      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Bag"),
                      BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: "Profile"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
          ),
        ],
      ),
    );
  }
}