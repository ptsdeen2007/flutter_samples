import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
//  static const LatLng _center = const LatLng(45.521563, -122.677433);
  static const LatLng _center = const LatLng(11.370238, 75.885098);
  Completer<GoogleMapController> _controller = Completer();
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("done"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,  initialCameraPosition: CameraPosition(
          target: _center,
          zoom:8.0,
        ),

      ),
    );
  }
}
