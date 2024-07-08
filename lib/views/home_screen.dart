import 'package:auto_hotspot/views/platform_method_test_view.dart';
import 'package:auto_hotspot/views/wifi_manager_screen.dart';
import 'package:auto_hotspot/widgets/app_buttons.dart';
import 'package:auto_hotspot/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'example_code_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            AppElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (context) => const WifiManagerScreen(),
                ));
              },
              text: 'Wifi Manager',
            ),
            const SizedBox(height: 16),
            AppElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute<void>(
                    builder: (context) => const FlutterWifiIoT(),
                  ));
                },
                text: 'Wifi iot example code'),
            const SizedBox(height: 16),
            AppElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute<void>(
                      builder: (context) => const PlatformMethodTestView()));
                },
                text: 'Platform Method Test'),
          ],
        ),
      ),
    );
  }
}
