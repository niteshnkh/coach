
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'CustomIcon.dart';
import 'screens/SearchPage.dart';
import 'screens/ProfilePage.dart';
import 'screens/MainPage.dart';
import 'screens/HomeScreen/HomePage.dart';
import 'screens/ActivityPage.dart';


class AppBarBottom extends StatefulWidget {
  const AppBarBottom({Key? key}) : super(key: key);

  @override
  _AppBarBottomState createState() => _AppBarBottomState();
}

class _AppBarBottomState extends State<AppBarBottom> {
  int _currentIndex = 0;

  List _widgetOptions = [
    HomePage(),
    SearchPage(),
    MainPage(),
    ProfilePage(),
    ActivityPage()
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.center,
            child: Image.asset(
                'assets/appbar.png',
                width: MediaQuery.of(context).size.width*0.5,
            height: MediaQuery.of(context).size.height*0.05,)),

      ),

      body: Container(child: _widgetOptions.elementAt(_currentIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffccd0d8),
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTap,
        items: [
          BottomNavigationBarItem(icon: Icon(CustomIcons.home, color: Color(0xff3a3a39),),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(icon: Icon(CustomIcons.training, color: Color(0xff3a3a39),),
            label: 'Mi entrenamiento',
          ),
          BottomNavigationBarItem(icon: Icon(CustomIcons.diet, color: Color(0xff3a3a39),),
            label: 'Mi dieta',
          ),
          BottomNavigationBarItem(icon: Icon(CustomIcons.profile, color: Color(0xff3a3a39),),
            label: 'Mi dieta',
          ),
          BottomNavigationBarItem(icon: Icon(CustomIcons.weight, color: Color(0xff3a3a39),),
            label: 'Mi dieta',
          ),
        ],
      ),
    );
  }

   }