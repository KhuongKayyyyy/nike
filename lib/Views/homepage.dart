import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nike/Views/landing.dart';
import 'package:nike/Views/profile_page.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int myCurrentIndex = 0;
  List pages = const [
    Landing(),
    ProfilePage(),
    ProfilePage(),
    ProfilePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child:  Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
              extendBody: true,
              body: pages[myCurrentIndex],
              bottomNavigationBar: Container(
                margin:  const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.2),
                        offset:const Offset(0,20)
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child:  BottomNavigationBar(
                    elevation: 0,
                    backgroundColor: Color(0x00ffffff),
                    currentIndex: myCurrentIndex,
                    onTap: (index){
                      setState(() {
                        myCurrentIndex = index;
                      });
                    },
                    selectedItemColor: Colors.black,
                    unselectedItemColor: Colors.grey[300]!,
                    items: const [
                      BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
                      BottomNavigationBarItem(icon: Icon(Icons.search), label: "Shop"),
                      BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: "Favorite"),
                      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Bag"),
                      BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: "Profile"),
                    ],
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}