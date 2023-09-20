import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/modules/add.dart';
import 'package:todolist/modules/archived.dart';
import 'package:todolist/modules/done.dart';
import 'package:todolist/modules/profile.dart';

import '../modules/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex =0;
 List screens =[
  Home(),
    ArchivedTask(),
    AddTask(),
    DoneTask(),
Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
          currentIndex=index;
          });

        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,color: Colors.black,),label: 'Archeived'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outlined,color: Colors.deepPurpleAccent,),label: "ADD"),
          BottomNavigationBarItem(icon: Icon(Icons.check_circle_outline,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded,color: Colors.black,),label: "Profile"),

        ],
      ),
    );
  }
}
