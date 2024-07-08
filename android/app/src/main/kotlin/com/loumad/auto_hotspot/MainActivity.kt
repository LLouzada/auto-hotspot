package com.loumad.auto_hotspot

import android.content.Context
import android.net.wifi.WifiManager
import android.os.BatteryManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private var channel = "com.loumad.auto_hotspot/channel"

    //companion para armazenar os nomes das funções
    companion object {
        const val GET_BATTERY_LEVEL = "getBatteryLevel"
        const val GET_WIFI_STATE = "getWifiState"
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            channel
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                GET_BATTERY_LEVEL -> handleGetBatteryLevel(result)
                GET_WIFI_STATE -> handleGetWifiState(result)
                else -> result.notImplemented()
            }
        }
    }

    private fun handleGetBatteryLevel(result: MethodChannel.Result) {
        val batteryLevel = getBatteryLevel()
        if (batteryLevel != -1) {
            result.success(batteryLevel)
        } else {
            result.error("UNAVAILABLE", "Battery level not available.", null)
        }
    }

    private fun getBatteryLevel(): Int {
        val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
    }

    private fun handleGetWifiState(result: MethodChannel.Result) {
        val wifiState = getWifiState()
        result.success(wifiState)
    }

    private fun getWifiState(): Boolean {
        val wifiManager = applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager
        return wifiManager.isWifiEnabled
    }
}
