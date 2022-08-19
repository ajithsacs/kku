import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mythings_app/demo/string_const.dart';

List titledata = [
  "Things",
  "People",
  "Tasks",
  "Automate Your Tasks",
  "Let’s Go"
];
List subdata = [
  "Collect Your Possessions",
  "Connect and Share",
  "Automate Your Tasks",
  "Work Together",
  "Organize Your Life!"
];

class IntroCard extends StatelessWidget {
  IntroCard({Key? key}) : super(key: key);
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodycontent(_controller));
  }
}

void main() {
  runApp(GetMaterialApp(
    home: IntroCard(),
  ));
  // runApp(MaterialApp(
  //   theme: ThemeData(primaryColor: Colors.white),
  //  home: IntroCard(),
  //));
}

_bodycontent(_controller) {
  return SafeArea(
    child: _bodychild(_controller),
  );
}

_bodychild(_controller) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      _topindicator(),
      _cardbody(_controller),
      _bottomindicator(),
    ],
  );
}

_bottomindicator() {
  return Expanded(
      child: ListView.builder(
    itemCount: titledata.length,
    itemBuilder: (context, index) {
      return _carddot(titledata.length);
    },
    scrollDirection: Axis.horizontal,
  ));
}

_cardbody(_controller) {
  return Expanded(
    flex: 4,
    child: PageView.builder(
      controller: _controller,
      itemCount: titledata.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _controller.jumpToPage(index);
          },
          child: Column(
            children: [
              _cardtitle(titledata[index], subdata[index]),
              _imagecard(context),
            ],
          ),
          //_cardtitle(titledata[index], subdata[index]),

          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     index == 0
          //         ? Row(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Container(
          //                   height: 4,
          //                   width: 50,
          //                   color: Colors.blue,
          //                 ),
          //               )
          //             ],
          //           )
          //         : Row(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Container(
          //                   height: 4,
          //                   width: 100,
          //                   color: Color.fromARGB(255, 133, 134, 134),
          //                 ),
          //               ),
          //               Container(
          //                 height: 4,
          //                 width: 100,
          //                 color: Color.fromARGB(255, 133, 134, 134),
          //               )
          //             ],
          //           ),
          //   ],
          // ),
        );
      },
    ),
  );
}

_topindicator() {
  return Expanded(
    flex: 1,
    child: ListView.builder(
      itemCount: titledata.length,
      itemBuilder: (context, index) {
        return _cardline(context);
      },
      scrollDirection: Axis.horizontal,
    ),
  );
}

_cardtitle(title, subtile) {
  return Column(
    children: [
      Center(
          child: Text(
        title,
        style: const TextStyle(fontSize: 15),
      )),
      Text(
        subtile,
        style: const TextStyle(fontSize: 30),
      ),
    ],
  );
}

_imagecard(context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.5,
          color: Colors.grey[400],
        ),
      )
    ],
  );
}

_cardbutton() {
  return ElevatedButton(child: Text(Appconst.continues), onPressed: () {});
}

_carddot(index) {
  int ind = index;

  if (index <= index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          //color: Colors.grey,
          width: 12,
          height: 10,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              color: Color.fromARGB(255 - ind, 187 * ind, 146 * ind, 25 * ind),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
        ),
      ],
    );
  }
  return _carddot(index - 1);
}

_cardline(context) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Row(
      children: [
        Container(
          width: (MediaQuery.of(context).size.width * 0.20),
          height: MediaQuery.of(context).size.height * 0.009,
          color: const Color.fromARGB(255, 116, 100, 100),
        )
      ],
    ),
  );
}
