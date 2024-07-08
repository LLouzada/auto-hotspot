import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/app_buttons.dart';
import "dart:core";

class WifiManagerScreen extends StatefulWidget {
  const WifiManagerScreen({super.key});

  @override
  State<WifiManagerScreen> createState() => _WifiManagerScreenState();
}

class _WifiManagerScreenState extends State<WifiManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wifi Manager Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Wifi Hotspot Manager',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            AppElevatedButton(
                onPressed: () {
                  setHotspot(true);
                },
                text: 'Enable Hotspot'),
            const SizedBox(width: 16),
            AppElevatedButton(
                onPressed: () {
                  setHotspot(false);
                },
                text: 'Disable Hotspot'),
          ],
        ),
      ),
    );
  }

  static const platform = MethodChannel('com.example.hotspot/channel');

  Future<void> setHotspot(bool enable) async {
    try {
      final bool result =
          await platform.invokeMethod('setHotspot', {'enable': enable});
      debugPrint('Hotspot changed: $result');
    } on PlatformException catch (e) {
      debugPrint("Failed to set hotspot: '${e.message}'.");
    }
  }
}
