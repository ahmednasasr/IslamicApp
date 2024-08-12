import 'package:flutter/material.dart';
import 'package:islamicapp/core/widgets/bg_screen.dart';
import 'package:islamicapp/screens/hadeth_screen.dart';
import 'package:islamicapp/screens/home_screen.dart';
import 'package:islamicapp/screens/quran_screen.dart';
import 'package:islamicapp/screens/radio_screen.dart';
import 'package:islamicapp/screens/sebha_screen.dart';

class LayoutScreen extends StatefulWidget {
  static const String routename = "layoutscreen";

  LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedindex = 2;

  List<Widget> screens = [
    QuranScreen(),
    SebhaScreen(),
    HomeScreen(),
    HadethScreen(),
    RadioScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BgScreen(
      child: Scaffold(
        appBar: AppBar(),
        body: screens[selectedindex],
        bottomNavigationBar: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  selectedindex = value;
                });
              },
              currentIndex: selectedindex,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage("assets/iamges/quran.png"),
                        size: 50),
                    label: "Quran"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage("assets/iamges/sebha.png"),
                        size: 50),
                    label: "Sebha"),
                BottomNavigationBarItem(
                    icon: SizedBox.shrink(), label: ""), // Empty for Home
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage("assets/iamges/Group 6.png"),
                        size: 50),
                    label: "Book"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage("assets/iamges/radio.png"),
                        size: 50),
                    label: "Radio"),
              ],
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
              unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
              showUnselectedLabels: Theme.of(context).bottomNavigationBarTheme.showUnselectedLabels ?? false,
              elevation: 16,
            ),
            Positioned(
              bottom: 10,
              child: Container(
                width: 80,
                height: 80,
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      selectedindex = 2;
                    });
                  },
                  child: ImageIcon(
                    AssetImage("assets/iamges/eco-house.png"),
                    size: 40,
                    color: Color(0xffE6AF2F),
                  ),
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xffE2BE7F),
                      width: 4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


