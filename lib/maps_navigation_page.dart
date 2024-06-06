import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapsNavigationPage extends StatefulWidget {
  @override
  _MapsNavigationPageState createState() => _MapsNavigationPageState();
}

class _MapsNavigationPageState extends State<MapsNavigationPage> {
  final LatLng _center = LatLng(1.474830, 124.842079);
  final List<Marker> _markers = [
    Marker(
      point: LatLng(1.474830, 124.842079),
      builder: (ctx) => Container(
        child: Icon(
          Icons.location_on,
          color: Colors.red,
          size: 40,
        ),
      ),
    ),
    // Add more markers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fishing Maps'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: _center,
          zoom: 11.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: _markers,
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: MapsNavigationPage(),
    ));
