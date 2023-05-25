import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/videos.dart';

class SingleSearchPost extends StatelessWidget {
  const SingleSearchPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Videos();
          }));
        },
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://im.rediff.com/cricket/2023/apr/19siraj.jpg?w=670&h=900"))),
        ),
      ),
    );
  }
}
