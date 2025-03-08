// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_maps_flutter/google_maps_flutter.dart' as gmap;
import 'dart:convert';
import 'package:http/http.dart' as http;

/* Add these to pubspec.yaml:
google_maps_flutter: ^2.5.0
*/

class PolylineGoogleMapCustomWidget extends StatefulWidget {
  const PolylineGoogleMapCustomWidget({
    Key? key,
    this.width,
    this.height,
    required this.latStart,
    required this.lngStart,
    required this.latEnd,
    required this.lngEnd,
    this.initialZoom = 12.0,
    this.polylineColor = Colors.blue,
    this.polylineWidth = 5.0,
    this.markerIcon,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String latStart; // Disimpan sebagai String di FlutterFlow
  final String lngStart;
  final String latEnd;
  final String lngEnd;
  final double initialZoom;
  final Color polylineColor;
  final double polylineWidth;
  final Widget? markerIcon;

  @override
  _PolylineGoogleMapCustomWidgetState createState() =>
      _PolylineGoogleMapCustomWidgetState();
}

class _PolylineGoogleMapCustomWidgetState
    extends State<PolylineGoogleMapCustomWidget> {
  gmap.GoogleMapController? mapController;
  Set<gmap.Marker> markers = {};
  Set<gmap.Polyline> polylines = {}; // 🔹 Tambahkan polyline set
  List<gmap.LatLng> routePoints = []; // ✅ Pastikan variabel ini ada

  @override
  void initState() {
    super.initState();
    _createMarkers();
    _createPolylines(); // 🔹 Tambahkan polyline setelah marker dibuat
    _fetchRoute(); // ✅ Ambil rute dari Google Directions API
  }

/*
// Fungsi untuk mengambil rute dari Google Directions API
  Future<List<gmap.LatLng>> getPolylinePoints(
      String startLat, String startLng, String endLat, String endLng) async {
    const String apiKey =
        "AIzaSyDsc1dFvcyeI0OiCBNjxVdSBkTx4xTtgns"; // 🔹 Ganti dengan API key-mu
    final String url =
        "https://maps.googleapis.com/maps/api/directions/json?origin=$startLat,$startLng&destination=$endLat,$endLng&key=$apiKey";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if ((data['routes'] as List).isNotEmpty) {
        final points = data['routes'][0]['overview_polyline']['points'];
        return decodePolyline(points);
      }
    }
    return [];
  }
*/
  Future<void> _fetchRoute() async {
    String apiKey =
        "AIzaSyDsc1dFvcyeI0OiCBNjxVdSBkTx4xTtgns"; // 🔑 Ganti dengan API Key kamu
    String url =
        "https://maps.googleapis.com/maps/api/directions/json?origin=${widget.latStart},${widget.lngStart}&destination=${widget.latEnd},${widget.lngEnd}&key=$apiKey";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['routes'].isNotEmpty) {
        List<gmap.LatLng> points =
            _decodePolyline(data['routes'][0]['overview_polyline']['points']);
        setState(() {
          routePoints = points;
          _createPolylines(); // 🔹 Tambahkan polyline setelah data masuk
          polylines.add(
            gmap.Polyline(
              polylineId: const gmap.PolylineId("route"),
              color: widget.polylineColor,
              width: widget.polylineWidth.toInt(),
              //  points: routePoints,
              points: routePoints.isNotEmpty
                  ? routePoints
                  : [], // 🔹 Cek jika tidak kosong
            ),
          );
        });
      }
    }
  }

  List<gmap.LatLng> _decodePolyline(String encoded) {
    List<gmap.LatLng> polyline = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int shift = 0, result = 0;
      int byte;
      do {
        byte = encoded.codeUnitAt(index++) - 63;
        result |= (byte & 0x1F) << shift;
        shift += 5;
      } while (byte >= 0x20);
      int deltaLat = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lat += deltaLat;

      shift = 0;
      result = 0;
      do {
        byte = encoded.codeUnitAt(index++) - 63;
        result |= (byte & 0x1F) << shift;
        shift += 5;
      } while (byte >= 0x20);
      int deltaLng = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lng += deltaLng;

      polyline.add(gmap.LatLng(lat / 1E5, lng / 1E5));
    }
    return polyline;
  }

  void _createMarkers() {
    try {
      // Ubah string menjadi double
      double latStart = double.parse(widget.latStart);
      double lngStart = double.parse(widget.lngStart);
      double latEnd = double.parse(widget.latEnd);
      double lngEnd = double.parse(widget.lngEnd);

      // Start marker
      markers.add(
        gmap.Marker(
          markerId: const gmap.MarkerId('start'),
          position: gmap.LatLng(latStart, lngStart),
        ),
      );

      // End marker
      markers.add(
        gmap.Marker(
          markerId: const gmap.MarkerId('end'),
          position: gmap.LatLng(latEnd, lngEnd),
        ),
      );
    } catch (e) {
      debugPrint("Error parsing coordinates: $e");
    }
  }

  void _createPolylines() {
    try {
      double latStart = double.parse(widget.latStart);
      double lngStart = double.parse(widget.lngStart);
      double latEnd = double.parse(widget.latEnd);
      double lngEnd = double.parse(widget.lngEnd);

      polylines.add(
        gmap.Polyline(
          polylineId: const gmap.PolylineId('route'),
          color: widget.polylineColor,
          width: widget.polylineWidth.toInt(),
          points:
              routePoints, // 🔹 Gunakan titik-titik dari Google Directions API
        ),
      );
    } catch (e) {
      debugPrint("Error creating polyline: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: gmap.GoogleMap(
        initialCameraPosition: gmap.CameraPosition(
          target: gmap.LatLng(
            double.parse(widget.latStart), // Fokus pada titik start
            double.parse(widget.lngStart),
          ),
          zoom: widget.initialZoom,
        ),
        markers: markers,
        polylines: polylines, // 🔹 Tambahkan polyline ke Google Map
        onMapCreated: (gmap.GoogleMapController controller) {
          mapController = controller;
        },
      ),
    );
  }
}
