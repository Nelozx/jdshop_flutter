
import 'package:flutter/material.dart';
import 'package:jdshop/pages/tabs/cart_page.dart';
import 'package:jdshop/pages/tabs/index_page.dart';
import 'package:jdshop/pages/tabs/category_page.dart';
import 'package:jdshop/pages/tabs/user_page.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex=0;

  final List _pageList=[
    const HomePage(),
    const CategoryPage(),
    const CartPage(),
    const UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("JD"),),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (idx) {
          setState(() {
            _currentIndex = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "购物车"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "我的")
        ],
      ),
    );
  }
}
