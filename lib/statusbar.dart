import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StatusBar extends StatefulWidget {
  StatusBar(
      {super.key,
      required this.name,
      required this.image,
      required this.isyours});
  String name;
  String image;
  bool isyours;

  @override
  State<StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  getProfile() {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
          widget.image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              (widget.isyours)
                  ? Stack(alignment: Alignment.bottomRight, children: [
                      getProfile(),
                      Positioned(
                        right: 1,
                        bottom: 2,
                        child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: Center(
                                child: Icon(
                              Icons.add_outlined,
                              size: 18,
                              color: Colors.white,
                            ))),
                      )
                    ])
                  : getProfile()
            ],
          ),
          Text(!widget.isyours ? widget.name : "Your Story")
        ],
      ),
    );
  }
}
