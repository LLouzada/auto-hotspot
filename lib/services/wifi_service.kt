//import android.content.Context
//import android.net.wifi.WifiManager
//import android.os.Build
//import androidx.annotation.RequiresApi
//
//fun setWifiApState(context: Context, enabled: Boolean) {
//    val wifiManager = context.getSystemService(Context.WIFI_SERVICE) as WifiManager
//    try {
//        val method = wifiManager.javaClass.getDeclaredMethod("setWifiApEnabled", WifiConfiguration::class.java, Boolean::class.javaPrimitiveType)
//        method.invoke(wifiManager, null, enabled)
//    } catch (e: Exception) {
//        e.printStackTrace()
//    }
//}
