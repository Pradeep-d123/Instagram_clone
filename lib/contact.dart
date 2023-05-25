import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Contact extends StatefulWidget {
  const Contact({super.key, required this.onSelect});
  final void Function(bool) onSelect;

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 5, top: 15),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), border: Border.all()),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Name"), Text("Name Id")],
          ),
          SizedBox(width: 250),
          InkWell(
            onTap: () {
               isselected = !isselected;
              widget.onSelect(isselected);
             
              setState(() {});
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: isselected ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Icon(
                Icons.check,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
