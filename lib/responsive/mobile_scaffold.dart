import 'package:flutter/material.dart';
import 'package:ns/util/my_tile.dart';

import '../util/my_box.dart';
import 'constants.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myDefaultBackground,
        appBar: myAppBar,
        drawer: myDrawer,

        body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return MyBox();
                }
                  ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (context, index) {
                    return MyTile();
                  }
              ))
      ],
    ),
    );
  }
}
