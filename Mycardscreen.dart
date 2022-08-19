import 'dart:ui';

import 'package:flutter/material.dart';

class MycardScreen extends StatefulWidget {
  const MycardScreen({Key? key}) : super(key: key);

  @override
  State<MycardScreen> createState() => _MycardScreenState();
}

class _MycardScreenState extends State<MycardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: page2view(),
    ));
  }

  page2view() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text("Task"),
              Padding(
                padding: EdgeInsets.only(bottom: 12, left: 12),
                child: Text(
                  "12",
                  style: TextStyle(backgroundColor: Colors.grey,),
                ),
              )
            ],
          ),
          Text("View all")
        ],
      ),
    );
  }

  pageview() {
    return PageView(
      children: [
        pagedata("1", "data"),
        pagedata("2", "data"),
        pagedata("3", "data")
      ],
    );
  }

  pagedata(dataone, datatwo) {
    return Expanded(
        child: Column(
      children: [
        Center(child: Text(dataone)),
        Center(child: Text(datatwo)),
        Expanded(
            child: Container(
          color: Colors.grey,
        ))
      ],
    ));
  }
}
