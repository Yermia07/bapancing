import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  GoogleMapController? mapController;

  final LatLng _center = const LatLng(1.474830, 124.842079);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('spot1'),
            position: LatLng(1.474830, 124.842079),
            infoWindow: InfoWindow(
              title: 'Fishing Spot 1',
              snippet: 'Detail Spot 1',
            ),
          ),
          // Tambahkan marker lainnya sesuai kebutuhan
        },
      ),
    );
  }
}
