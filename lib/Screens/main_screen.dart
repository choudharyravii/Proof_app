
import 'package:flutter/material.dart';
import 'package:proof/Screens/Profile.dart';
import 'package:proof/Screens/fluffle.dart';
import 'package:proof/Screens/home.dart';
import 'package:proof/Screens/message.dart';
import 'package:proof/Utilis/contants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 
  bool switchValue = true;

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    //  FluFlleScreen(),
    const MessageScreen(),
    const ProfileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    var screenWidth = MediaQuery.of(context).size.width;
    var iconSize = screenWidth / 13;
    var selectedValue;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Images.mapicon),
              // color: Color.fromRGBO(8, 174, 158, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Images.friendicon),
              // color: Color.fromRGBO(8, 174, 158, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Images.messageicon),
              // color: Color.fromRGBO(8, 174, 158, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Images.personicon),
              // color: Color.fromRGBO(8, 174, 158, 1),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: iconSize,
        unselectedItemColor: const Color.fromRGBO(190, 179, 179, 1),
        selectedItemColor: const Color.fromRGBO(8, 174, 158, 1),
      ),
    );
  }
}
