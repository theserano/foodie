import 'package:flutter/material.dart';
import 'package:foodie/components/my_drawer.dart';
import 'package:foodie/components/my_silver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(child: Text('Hello'), title: Text('title'))
        ],
        body: Container(color: Colors.blue,),
        ),
    );
  }
}