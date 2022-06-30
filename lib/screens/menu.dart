import 'package:baum/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late PageController pageController;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Menu',
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.green),
        actions: [
          IconButton(
            icon: Icon(
              Icons.attach_money,
            ),
            iconSize: 30,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.message,
            ),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[Categories(), SignIn(), Categories()],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        onPressed: () => onTap(1),
        child: Icon(
          Icons.shopping_cart,
          color: getColor(1),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      onTap(0);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.person, color: getColor(0)),
                        Text("Kendime Sipariş ",
                            style: TextStyle(fontSize: 13, color: getColor(0)))
                      ],
                    )),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.transparent,
                    ),
                    Text("Sepetim",
                        style: TextStyle(fontSize: 13, color: getColor(1)))
                  ],
                ),
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: () {
                        onTap(2);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.people, color: getColor(2)),
                          Text("Toplu Sipariş",
                              style:
                                  TextStyle(fontSize: 13, color: getColor(2)))
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }

  Color getColor(int value) {
    return this.page == value ? Colors.yellowAccent : Colors.white;
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this.page);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onTap(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }
}
