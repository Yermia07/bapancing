// import 'package:flutter/material.dart';
// import 'widget/weather_widget.dart';
// import 'widget/catches_summary_widget.dart';

// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             WeatherWidget(),
//             CatchesSummaryWidget(),
//             // Tambahkan widget lainnya sesuai kebutuhan
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'fishing_log_page.dart';
import 'weather_forecast_page.dart';
import 'fish_stock_management_page.dart';
import 'community_forum_page.dart';
import 'maps_navigation_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Dashboard', style: Theme.of(context).textTheme.displayLarge),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WeatherWidget(),
            SizedBox(height: 20),
            DailyCatchesWidget(),
            SizedBox(height: 20),
            AlertsWidget(),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  DashboardButton(
                    label: 'Fishing Log',
                    icon: Icons.book,
                    color: Colors.blue,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FishingLogPage()),
                      );
                    },
                  ),
                  DashboardButton(
                    label: 'Weather',
                    icon: Icons.cloud,
                    color: Colors.green,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeatherForecastScreen()),
                      );
                    },
                  ),
                  DashboardButton(
                    label: 'Stock',
                    icon: Icons.storage,
                    color: Colors.red,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FishStockManagementPage()),
                      );
                    },
                  ),
                  DashboardButton(
                    label: 'Community',
                    icon: Icons.forum,
                    color: Colors.purple,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommunityForumPage()),
                      );
                    },
                  ),
                  DashboardButton(
                    label: 'Maps',
                    icon: Icons.map,
                    color: Colors.orange,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MapsNavigationPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.wb_sunny, color: Colors.white, size: 30),
          SizedBox(width: 10),
          Text(
            '25°C, Clear',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class DailyCatchesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.pets, color: Colors.white, size: 30),
          SizedBox(width: 10),
          Text(
            'Daily Catches: 150 kg',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class AlertsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.warning, color: Colors.white, size: 30),
          SizedBox(width: 10),
          Text(
            'No Alerts',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  DashboardButton(
      {required this.label,
      required this.icon,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              SizedBox(height: 10),
              Text(label, style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
        ),
      ),
    );
  }
}
