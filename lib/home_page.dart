// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
//                 _buildGridTile(context, 'Dashboard',
//                     FontAwesomeIcons.tachometerAlt, Colors.blue, '/dashboard'),
//                 _buildGridTile(context, 'Fishing Log',
//                     FontAwesomeIcons.clipboard, Colors.green, '/fishing_log'),
//                 _buildGridTile(
//                     context,
//                     'Weather Forecast',
//                     FontAwesomeIcons.cloudSun,
//                     Colors.orange,
//                     '/weather_forecast'),
//                 _buildGridTile(
//                     context,
//                     'Fish Stock Management',
//                     FontAwesomeIcons.fish,
//                     Colors.red,
//                     '/fish_stock_management'),
//                 _buildGridTile(context, 'Maps', FontAwesomeIcons.map,
//                     Colors.purple, '/maps_navigation'),
//                 _buildGridTile(
//                     context,
//                     'Community Forum',
//                     FontAwesomeIcons.comments,
//                     Colors.brown,
//                     '/community_forum'),
//                 _buildGridTile(context, 'Market Prices',
//                     FontAwesomeIcons.dollarSign, Colors.teal, '/market_prices'),
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
      backgroundColor: const Color(0xfff9f9f9),
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
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profil');
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 24.0,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
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
          Container(
            width: 295,
            height: 51,
            padding: const EdgeInsets.only(right: 1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang, Yermia',
                  style: TextStyle(
                    color: Color(0xFF1E2022),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.80,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  'Apa yang pengen dilakuin hari ini?',
                  style: TextStyle(
                    color: Color(0xFF77838F),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 386,
            height: 109,
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 386,
                    height: 109,
                    decoration: ShapeDecoration(
                      color: Color(0xFF029EBF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 19,
                  child: Container(
                    width: 91,
                    height: 71,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 44.49,
                          top: 18.26,
                          child: Container(
                            width: 27.30,
                            height: 27.39,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFEB137),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 33.37,
                          top: 0,
                          child: Container(
                            width: 57.63,
                            height: 54.77,
                            child: Stack(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 119,
                  top: 14,
                  child: Container(
                    width: 90,
                    height: 81,
                    padding: const EdgeInsets.only(right: 1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Manado, Sulawesi Utara',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          '28° / 32°',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          'Selasa, 4 Juni',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 277,
                  top: 45,
                  child: Container(
                    width: 95,
                    height: 20,
                    padding: const EdgeInsets.only(right: 1),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 16,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/20x16"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          '20km/h',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Home',
            style: TextStyle(
              color: Color(0xFF1E2022),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.80,
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              _buildGridTile(context, 'Dashboard',
                  FontAwesomeIcons.tachometerAlt, Colors.blue, '/dashboard'),
              _buildGridTile(context, 'Fishing Log', FontAwesomeIcons.clipboard,
                  Colors.green, '/fishing_log'),
              _buildGridTile(
                  context,
                  'Weather Forecast',
                  FontAwesomeIcons.cloudSun,
                  Colors.orange,
                  '/weather_forecast'),
              _buildGridTile(context, 'Fish Stock Management',
                  FontAwesomeIcons.fish, Colors.red, '/fish_stock_management'),
              _buildGridTile(context, 'Maps', FontAwesomeIcons.map,
                  Colors.purple, '/maps_navigation'),
              _buildGridTile(context, 'Community Forum',
                  FontAwesomeIcons.comments, Colors.brown, '/community_forum'),
              _buildGridTile(context, 'Market Prices',
                  FontAwesomeIcons.dollarSign, Colors.teal, '/market_prices'),
            ],
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              SizedBox(height: 8.0),
              Text(title, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
