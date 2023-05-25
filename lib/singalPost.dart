import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/comments.dart';
import 'package:instagram/send.dart';

class SinglePost extends StatefulWidget {
  const SinglePost({super.key});

  @override
  State<SinglePost> createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  bool islike = false;
  int likecount = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://im.rediff.com/cricket/2023/apr/18kohli2.jpg?w=670&h=900"))),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User Name",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      Text("Audio Name")
                    ],
                  ),
                ),
                Icon(Icons.more_vert)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.toiimg.com/thumb/msid-99589692,imgsize-92342,width-400,resizemode-4/99589692.jpg"))),
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    islike = !islike;
                    if (islike) {
                      likecount = likecount + 1;
                    } else {
                      likecount = likecount - 1;
                    }
                    setState(() {});
                  },
                  icon: islike
                      ? Icon(Icons.favorite_sharp, color: Colors.red)
                      : Icon(Icons.favorite_outline)),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Comments();
                    }));
                  },
                  icon: Icon(Icons.comment_outlined)),
              IconButton(
                  onPressed: () {
                    showBottomSheet(
                        context: context,
                        builder: (context) {
                          return Send();
                        });
                  },
                  icon: Icon(Icons.share)),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.save_alt)),
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 5),
            child: Text(
              likecount.toString(),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: RichText(
              text: TextSpan(
                text: "Page Name",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
                children: [
                  TextSpan(
                      text: "data",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: InkWell(
              onTap: () {},
              child: Text(
                "View all Comments",
                style: TextStyle(fontSize: 15),
              ),
            ),
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
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Time"),
          )
        ],
      ),
    );
  }
}
