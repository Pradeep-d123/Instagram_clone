import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/send.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Scaffold(
            body: Stack(
              children: [
                InkWell(
                  onDoubleTap: () {
                    isliked = !isliked;
                    setState(() {});
                  },
                  child: Image.network(
                      "https://im.rediff.com/cricket/2023/apr/18rohit-arjun.jpg?w=670&h=900",
                      fit: BoxFit.fitHeight,
                      height: MediaQuery.of(context).size.height),
                ),
                Positioned(
                  right: 20,
                  bottom: 150,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            isliked = !isliked;
                            setState(() {});
                          },
                          icon: isliked
                              ? Icon(
                                  Icons.favorite_sharp,
                                  color: Colors.red,
                                  size: 38,
                                )
                              : Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                  size: 38,
                                )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.comment,
                            color: Colors.white,
                            size: 30,
                          )),
                      Builder(builder: (context) {
                        return IconButton(
                            onPressed: () {
                              showBottomSheet(
                                  context: context,
                                  builder: (Context) {
                                    return Send(
                                        hight:
                                            MediaQuery.of(context).size.height *
                                                0.9);
                                  });
                            },
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 30,
                            ));
                      }),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
