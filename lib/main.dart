// import 'package:flutter/material.dart';
// import 'home_page.dart';
// import 'jenis_ikan_page.dart';
// import 'produk_page.dart';
// import 'ulasan_page.dart';
// import 'maps_page.dart';
// import 'login_page.dart';
// import 'profil_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bapancing',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/login',
//       routes: {
//         '/': (context) => HomePage(),
//         '/login': (context) => LoginPage(),
//         '/jenis_ikan': (context) => JenisIkanPage(),
//         '/produk': (context) => ProdukPage(),
//         '/ulasan': (context) => UlasanPage(),
//         '/maps': (context) => MapsPage(),
//         '/profil': (context) => ProfilPage(),
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'home_page.dart';
import 'dashboard_page.dart';
// import 'fishing_log_page.dart';
// import 'weather_forecast_page.dart';
// import 'fish_stock_management_page.dart';
// import 'maps_navigation_page.dart';
// import 'community_forum_page.dart';
// import 'market_prices_page.dart';
// import 'login_page.dart';
// import 'profil_page.dart';
// import 'add_fish_stock_page.dart';
// import 'add_fishing_log_entry_page.dart';
// import 'add_new_post_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bapancing',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/login',
//       routes: {
//         '/': (context) => HomePage(),
//         '/login': (context) => LoginPage(),
//         '/dashboard': (context) => DashboardPage(),
//         '/fishing_log': (context) => FishingLogPage(),
//         '/add_fishing_log_entry': (context) => AddFishingLogEntryPage(),
//         '/weather_forecast': (context) => WeatherForecastPage(),
//         '/fish_stock_management': (context) => FishStockManagementPage(),
//         '/add_fish_stock': (context) => AddFishStockPage(),
//         '/maps_navigation': (context) => MapsNavigationPage(),
//         '/community_forum': (context) => CommunityForumPage(),
//         '/add_new_post': (context) => AddNewPostPage(),
//         '/market_prices': (context) => MarketPricesPage(),
//         '/profil': (context) => ProfilPage(),
//       },
//     );
//   }
// }

void main() {
  runApp(FisheryApp());
}

class FisheryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fishery Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.orange,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
          labelLarge:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      home: DashboardPage(),
    );
  }
}
