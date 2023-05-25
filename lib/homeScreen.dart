import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/post.dart';
import 'package:instagram/statusbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return StatusBar(
                  name: "pradeep",
                  image:
                      "https://im.rediff.com/cricket/2023/apr/18kohli2.jpg?w=670&h=900",
                  isyours: true,
                );
              },
            ),
          ),
          Post()
        ],
      ),
    );
  }
}
