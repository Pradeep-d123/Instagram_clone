import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingleComment extends StatefulWidget {
  const SingleComment({super.key});

  @override
  State<SingleComment> createState() => _SingleCommentState();
}

class _SingleCommentState extends State<SingleComment> {
  bool islike = false;
  int currentlike = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35), border: Border.all()),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Page Name",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 8),
                  Text("Time")
                ],
              ),
              SizedBox(height: 5),
              Text("Comment"),
              SizedBox(height: 5),
              Text("Reply"),
            ],
          ),
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {
                  islike = !islike;
                  if (islike) {
                    currentlike = currentlike + 1;
                  } else {
                    currentlike = currentlike - 1;
                  }

                  setState(() {});
                },
                icon: islike
                    ? Icon(
                        Icons.favorite_sharp,
                        color: Colors.red,
                      )
                    : Icon(Icons.favorite_outline)),
            Text(
              currentlike.toString(),
              style: TextStyle(fontSize: 13),
            ),
          ],
        )
      ],
    );
  }
}
