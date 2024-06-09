import 'package:auto_hotspot/screens/wifimanager_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'example_code_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Auto Hotspot'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppMaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<void>(
                      builder: (context) => const WifiManagerScreen(),
                    ));
                  },
                  text: 'Wifi Manager',
                ),
                AppMaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                        builder: (context) => const FlutterWifiIoT(),
                      ));
                    },
                    text: 'Wifi iot example code'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
