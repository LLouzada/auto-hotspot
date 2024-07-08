import 'dart:async';
import 'package:auto_hotspot/widgets/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformMethodTestView extends StatefulWidget {
  const PlatformMethodTestView({super.key});

  @override
  PlatformMethodTestViewState createState() => PlatformMethodTestViewState();

  static const String channel = 'com.loumad.auto_hotspot/channel';
  static const String getBatteryLevel = 'getBatteryLevel';
  static const String getWifiState = 'getWifiState';
}

class PlatformMethodTestViewState extends State<PlatformMethodTestView> {
  static const platform = MethodChannel(PlatformMethodTestView.channel);

  String _batteryLevel = '';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final result = await platform
          .invokeMethod<int>(PlatformMethodTestView.getBatteryLevel);
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  String _wifiStatus = '';

  Future<void> _getWifiStatus() async {
    String wifiStatus;
    try {
      final result = await platform
          .invokeMethod<bool>(PlatformMethodTestView.getWifiState);
      wifiStatus = 'Wifi status is $result .';
    } on PlatformException catch (e) {
      wifiStatus = "Failed to get wifi status: '${e.message}'.";
    }

    setState(() {
      _wifiStatus = wifiStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppElevatedButton(
              onPressed: _getBatteryLevel,
              text: 'Get Battery Level',
            ),
            Text(_batteryLevel),
            const SizedBox(height: 16.0),
            AppElevatedButton(
              onPressed: _getWifiStatus,
              text: 'Get Wifi Status',
            ),
            Text(_wifiStatus),
          ],
        ),
      ),
    );
  }
}
