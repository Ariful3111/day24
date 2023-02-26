import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:day24/Information_Page.dart';
import 'package:day24/Pages/Account.dart';
import 'package:day24/Pages/Cart.dart';
import 'package:day24/Pages/Home.dart';
import 'package:day24/Pages/Search.dart';
import 'package:day24/Pages/Wishlist.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
 static List _pages=[
    Home(),
    Account(),
    WishList(),
    Cart(),
    Search(),
  ];
  List<TabItem> items = [
    TabItem(
      icon: Icons.home,

    ),
    TabItem(
      icon: Icons.account_box,

    ),
    TabItem(
      icon: Icons.document_scanner,

    ),
    TabItem(
      icon: Icons.shopping_cart_outlined,

    ),
    TabItem(
      icon: Icons.search_sharp,
    ),
  ];
  int _currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 8,left: 8, bottom: 8),
        child: BottomBarCreative(
          items: items,
          backgroundColor: Color(0xFF111526),
          color: Colors.white,
          colorSelected: Color(0xFF918AE3),
          borderRadius: BorderRadius.circular(20),
          indexSelected: _currentindex,
          onTap: (int index) => setState(() {
            _currentindex=index;
          }),
        ),
      ),
    );
  }
}
