import 'package:flutter/material.dart';
import 'package:instagram/SearchSCreen.dart';
import 'package:instagram/chats.dart';
import 'package:instagram/homeScreen.dart';
import 'package:instagram/mypost.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/videos.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WElcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WElcomeScreen extends StatefulWidget {
  const WElcomeScreen({super.key});

  @override
  State<WElcomeScreen> createState() => _WElcomeScreenState();
}

class _WElcomeScreenState extends State<WElcomeScreen> {
  int cindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Chatts();
                }));
              },
              icon: Icon(
                Icons.message_rounded,
                color: Colors.black,
              ))
        ],
      ),
      body: cindex == 0
          ? HomeScreen()
          : cindex == 1
              ? SearchScreen()
              : cindex == 2
                  ? MyPost()
                  : cindex == 3
                      ? Videos()
                      : Profile(),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              cindex = 0;
              setState(() {});
            },
            icon: Icon(Icons.home_outlined),
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {
              cindex = 1;
              setState(() {});
            },
            icon: Icon(Icons.search_outlined),
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {
              cindex = 2;
              setState(() {});
            },
            icon: Icon(Icons.gamepad),
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {
              cindex = 3;
              setState(() {});
            },
            icon: Icon(Icons.video_stable),
            iconSize: 40,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all()),
            ),
          ),
        ],
      ),
    );
  }
}
