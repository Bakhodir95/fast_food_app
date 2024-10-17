import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location2Widget extends StatelessWidget {
  Location2Widget({super.key});
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(41.285868, 69.203974),
    zoom: 12,
  );

  final LatLng _markerPosition = const LatLng(41.285834, 69.203533);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 259.h,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      child: GoogleMap(
        myLocationEnabled: true,
        compassEnabled: true,
        markers: {
          Marker(
            markerId: const MarkerId('1'),
            rotation: 2,
            position: _markerPosition,
            infoWindow: const InfoWindow(
              title: "Na'jot Ta'lim",
            ),
          ),
        },
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
