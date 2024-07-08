import 'package:auto_hotspot/config/colors.dart';
import 'package:auto_hotspot/views/platform_method_test_view.dart';
import 'package:auto_hotspot/views/wifi_manager_screen.dart';
import 'package:auto_hotspot/widgets/app_buttons.dart';
import 'package:flutter/material.dart';

import 'example_code_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.accent,
        elevation: 4.0,
        centerTitle: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        title: const Row(
          children: [
            Icon(
              Icons.wifi,
              color: AppColors.background,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Auto Hotspot',
                style: TextStyle(
                    color: AppColors.background,
                    fontFamily: 'FiraSans',
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
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
