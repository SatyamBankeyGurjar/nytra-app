// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nytra_ui/screens/fees_payment_screen.dart';
import '../color.dart';
import 'bus_card_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: themeColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            child: GNav(
              rippleColor: Colors.white,
              gap: 6,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.white.withOpacity(0.3),
              padding: const EdgeInsets.all(8),
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.money,
                  text: 'Fees',
                ),
                GButton(
                  icon: Icons.bus_alert_outlined,
                  text: 'Bus',
                ),
                GButton(
                  icon: Icons.person_2_outlined,
                  text: 'Profile',
                ),
              ],
              onTabChange: _onItemTapped,
            ),
          )),

      // This is another nav Design
      // bottomNavigationBar: CurvedNavigationBar(
      //   index: 0,
      //   backgroundColor: Colors.white,
      //   color: themeColor,
      //   height: 55,
      //   animationDuration: Duration(milliseconds: 300),
      //   onTap: (index) {
      //     // print(index);
      //     _onItemTapped(index);
      //   },
      //   items: const [
      //     Icon(
      //       Icons.home_outlined,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.attach_money_outlined,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.bus_alert_outlined,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.person_2_outlined,
      //       color: Colors.white,
      //     ),
      //   ],
      // ),

      body: _pages[_selectIndex],
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectIndex = value;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    FeesPaymentScreen(),
    BusCardScreen(),
    ProfileScreen()
  ];
}
