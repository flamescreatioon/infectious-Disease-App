import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future location(BuildContext context) async {
  LatLng currentUserLocationValue =
      await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));

  FFAppState().location = currentUserLocationValue.toString();
}
