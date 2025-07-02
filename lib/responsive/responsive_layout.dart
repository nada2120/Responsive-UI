import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    super.key,
    required this.mobilScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:(context , constrains){
          if(constrains.maxWidth < 500) {
            return mobilScaffold;
          } else if(constrains.maxWidth < 1100) {
            return tabletScaffold;
          } else {
            return desktopScaffold;
          }
        }
    );
  }

}