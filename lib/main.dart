import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ns/responsive/desktop_scaffold.dart';
import 'package:ns/responsive/mobile_scaffold.dart';
import 'package:ns/responsive/responsive_layout.dart';
import 'package:ns/responsive/tablet_scaffold.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobilScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold()
      ),
    );
  }
}



