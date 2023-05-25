import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/send.dart';
import 'package:instagram/singalPost.dart';
import 'package:instagram/singlecomment.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Comments",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    showBottomSheet(
                        context: context,
                        builder: (context) {
                          return Send();
                        });
                  },
                  icon: Icon(
                    Icons.send_outlined,
                    color: Colors.black,
                  ));
            }
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (cobtext, index) {
                  return SingleComment();
                }),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://im.rediff.com/cricket/2023/apr/18kohli2.jpg?w=670&h=900",
                          ))),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Add your Comment"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
