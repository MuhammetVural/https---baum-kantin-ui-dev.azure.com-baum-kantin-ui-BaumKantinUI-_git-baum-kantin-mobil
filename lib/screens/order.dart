import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4, initialIndex: 0);
    super.initState();
  }
  // By default our first item will be selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
backgroundColor: Colors.green,
        flexibleSpace: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

        new TabBar(
          indicatorColor: Colors.yellowAccent,

          controller: _tabController,
          tabs:const <Widget> [
            Tab(
              child:Text("Giriş", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            ),
            Tab(
              child:Text("Yemek", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            ),
            Tab(
              child:Text("İçecek", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            ),
            Tab(
              child:Text("Diğer", style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            ),

          ],
        ),
          ],
        ),
        ),
      // body: TabBarView(
      //   controller: _tabController,
      //   physics: const BouncingScrollPhysics(
      //       parent: AlwaysScrollableScrollPhysics()),
      //   children: <Widget>[
      //
      //   ],
      // ),
      );


  }
}