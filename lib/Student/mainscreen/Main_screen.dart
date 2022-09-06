import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/constrains.dart';
import 'pages/badge.dart';
import 'pages/exam.dart';
import 'pages/home.dart';
import 'pages/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
   
    return  Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PageView(
     
             controller: _pageController,
       
            children: const [
             Home(),
             Exam(),
             Badge(),
            Profile(),
            ],
               onPageChanged: (index) {
          setState(() => _currentPage = index);
               }
          ),
        ),
 
      bottomNavigationBar: BottomBar(
       
        backgroundColor: bottombarbg,
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items:  <BottomBarItem> [
          
          BottomBarItem(
            icon:  const Icon(Icons.home,),
            title:  const Text('Home'),
            activeColor: BottomBaractive,
            activeIconColor: BottomBaractive,
            inactiveColor: bottombarunactive 
          ),
          BottomBarItem(
            icon: const Icon(Icons.quora,),
            title: const  Text('Quiz'),
            activeColor: BottomBaractive,
            activeIconColor: BottomBaractive,
             inactiveColor: bottombarunactive
          ),
          BottomBarItem(
            icon: const Icon(Icons.shield,),
            title: const Text('Badges'),
             activeColor: BottomBaractive,
            activeIconColor: BottomBaractive,
            inactiveColor: bottombarunactive
             ),
          BottomBarItem(
            icon:  const Icon(Icons.account_circle,),
            title: const Text('Profile'),
             activeColor: BottomBaractive,
            activeIconColor: BottomBaractive,
            inactiveColor: bottombarunactive
             ),
        ],
      ),
    );
  }
}