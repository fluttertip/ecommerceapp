import 'package:flutter/material.dart';
import 'package:ecommerceappfirebase/screens/cart.dart';
import 'package:ecommerceappfirebase/screens/profile.dart';
import 'package:ecommerceappfirebase/section/homecatbottomsection.dart';
import 'package:ecommerceappfirebase/section/hometopsection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePageIndex(),
    Cart(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cartShopping,
              size: 20,
            ),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePageIndex extends StatefulWidget {
  const HomePageIndex({super.key});

  @override
  State<HomePageIndex> createState() => _HomePageIndexState();
}

class _HomePageIndexState extends State<HomePageIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Today's Deals",
                  style: TextStyle(
                    color: Colors.orange[500],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const HomeTopSection(),
              const SizedBox(
                height: 10,
              ),
              const HomeCatBottomSection(),
            ],
          ),
        ),
      )),
    );
  }
}
