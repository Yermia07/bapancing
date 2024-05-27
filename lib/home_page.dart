// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bapancing'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // Implementasi pencarian
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(16.0),
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Colors.blue,
//                   radius: 24.0,
//                   child: Icon(Icons.person, color: Colors.white),
//                 ),
//                 SizedBox(width: 8.0),
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Search',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                       filled: true,
//                       fillColor: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: GridView.count(
//               crossAxisCount: 2,
//               children: [
//                 _buildGridTile(
//                     context, 'Maps', Icons.map, Colors.green, '/maps'),
//                 _buildGridTile(context, 'Jenis Ikan', Icons.pets, Colors.blue,
//                     '/jenis_ikan'),
//                 _buildGridTile(context, 'Ulasan', Icons.rate_review,
//                     Colors.orange, '/ulasan'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildGridTile(BuildContext context, String title, IconData icon,
//       Color color, String route) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, route);
//       },
//       child: Card(
//         color: color,
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(icon, size: 50, color: Colors.white),
//               Text(title, style: TextStyle(color: Colors.white)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bapancing'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implementasi pencarian
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 24.0,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildGridTile(context, 'Dashboard',
                    FontAwesomeIcons.tachometerAlt, Colors.blue, '/dashboard'),
                _buildGridTile(context, 'Fishing Log',
                    FontAwesomeIcons.clipboard, Colors.green, '/fishing_log'),
                _buildGridTile(
                    context,
                    'Weather Forecast',
                    FontAwesomeIcons.cloudSun,
                    Colors.orange,
                    '/weather_forecast'),
                _buildGridTile(
                    context,
                    'Fish Stock Management',
                    FontAwesomeIcons.fish,
                    Colors.red,
                    '/fish_stock_management'),
                _buildGridTile(context, 'Maps', FontAwesomeIcons.map,
                    Colors.purple, '/maps_navigation'),
                _buildGridTile(
                    context,
                    'Community Forum',
                    FontAwesomeIcons.comments,
                    Colors.brown,
                    '/community_forum'),
                _buildGridTile(context, 'Market Prices',
                    FontAwesomeIcons.dollarSign, Colors.teal, '/market_prices'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridTile(BuildContext context, String title, IconData icon,
      Color color, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        color: color,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              Text(title, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
