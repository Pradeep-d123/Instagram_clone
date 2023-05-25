import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/contact.dart';

class Send extends StatefulWidget {
  const Send({super.key, this.hight});
  final double? hight;

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  List<int> selectedUsersId = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.hight,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              height: 35,
              width: 380,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text("Search"),
                  SizedBox(width: 250),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.group_add_outlined))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Contact(
                      onSelect: (isselected) {
                        if (isselected) {
                          selectedUsersId.add(index);
                        } else {
                          selectedUsersId.remove(index);
                        }

                        setState(() {});
                      },
                    );
                  }),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 35, top: 10),
                child: selectedUsersId.length > 0
                    ? Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all()),
                        child: Center(
                          child: Text(
                            "Send",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      )
                    : Offstage()),
          ],
        ),
      ),
    );
  }
}
