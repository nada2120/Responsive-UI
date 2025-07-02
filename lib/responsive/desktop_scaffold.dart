import 'package:flutter/material.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';
import 'constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myDefaultBackground,
        appBar: myAppBar,
       body: Row(
         children: [
           myDrawer,
           Expanded(
             flex: 2,
               child: Column(
           children: [
           AspectRatio(
           aspectRatio: 4,
             child: SizedBox(
               width: double.infinity,
               child: GridView.builder(
                   itemCount: 4,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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
           ),
           Expanded(child: Column(
             children: [
               Expanded(child: Container(
                 color: Colors.pink,
               ))
             ],
           )
           )
         ],
       ),
    );
  }
}
