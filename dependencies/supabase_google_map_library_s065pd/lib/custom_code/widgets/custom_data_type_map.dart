// Automatic FlutterFlow imports
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'dart:typed_data';

class MapBox extends StatefulWidget {
  const MapBox({
    super.key,
    this.width,
    this.height,
    required this.places,
    required this.zoom,
    this.centerLatitude,
    this.centerLongitude,
    this.onClickMarker,
    required this.publicAccessToken,
  });

  final double? width;
  final double? height;
  final List<PlaceStruct> places;
  final double zoom;
  final double? centerLatitude;
  final double? centerLongitude;
  final Future Function(PlaceStruct? place)? onClickMarker;
  final String publicAccessToken;

  @override
  State<MapBox> createState() => _MapBoxState();
}

class _MapBoxState extends State<MapBox> {
  MapboxMap? mapboxMap;
  PointAnnotationManager? pointAnnotationManager;
  PointAnnotation? selectedAnnotation;
  PlaceStruct? selectedPlace;

  Future<Uint8List?> loadImage(String path) async {
    if (path.toLowerCase().startsWith('http')) {
      return await loadNetworkImage(path);
    } else {
      return await loadAssetImage(path);
    }
  }

  Future<Uint8List?> loadNetworkImage(String path) async {
    final completer = Completer<ImageInfo>();
    var image = NetworkImage(path);
    image.resolve(const ImageConfiguration()).addListener(ImageStreamListener(
        (ImageInfo info, bool _) => completer.complete(info)));
    final imageInfo = await completer.future;
    final byteData =
        await imageInfo.image.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  Future<Uint8List?> loadAssetImage(String path) async {
    final completer = Completer<ImageInfo>();
    final assetPath =
        path.startsWith('assets/images/') ? path : 'assets/images/$path';
    var image = AssetImage(assetPath);
    image.resolve(const ImageConfiguration()).addListener(ImageStreamListener(
        (ImageInfo info, bool _) => completer.complete(info)));
    final imageInfo = await completer.future;
    final byteData =
        await imageInfo.image.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  @override
  void initState() {
    super.initState();
    MapboxOptions.setAccessToken(widget.publicAccessToken);

    print('placeList: ${widget.places}');
  }

  void _showAnnotationPopup(BuildContext context) async {
    if (selectedPlace != null && widget.onClickMarker != null) {
      await widget.onClickMarker!(selectedPlace);
    }
  }

  _onMapCreated(MapboxMap mapboxMap) async {
    this.mapboxMap = mapboxMap;
    pointAnnotationManager =
        await mapboxMap.annotations.createPointAnnotationManager();

    // Add click listener
    pointAnnotationManager?.addOnPointAnnotationClickListener(
      MarkerClickListener(
        onClick: (annotation) {
          setState(() {
            selectedAnnotation = annotation;
            selectedPlace = widget.places.firstWhere(
              (place) =>
                  place.latitude == annotation.geometry.coordinates.lat &&
                  place.longitude == annotation.geometry.coordinates.lng,
              orElse: () => widget.places.first,
            );
          });
          _showAnnotationPopup(context);
        },
      ),
    );

    // Create markers for all places
    for (var place in widget.places) {
      if (place.imageUrl != null) {
        final imageData = await loadImage(place.imageUrl!);
        if (imageData != null) {
          PointAnnotationOptions pointAnnotationOptions =
              PointAnnotationOptions(
            geometry:
                Point(coordinates: Position(place.longitude, place.latitude)),
            image: imageData,
            iconSize: 0.3,
          );

          try {
            await pointAnnotationManager?.create(pointAnnotationOptions);
          } catch (e) {
            print('Error creating point annotation: $e');
          }
        }
      }
    }
  }

  @override
  void didUpdateWidget(MapBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.places != widget.places) {
      _updateMarkers();
    }
  }

  Future<void> _updateMarkers() async {
    if (pointAnnotationManager != null) {
      // Clear existing markers
      await pointAnnotationManager?.deleteAll();

      // Create new markers for all places
      for (var place in widget.places) {
        if (place.imageUrl != null) {
          final imageData = await loadImage(place.imageUrl!);
          if (imageData != null) {
            PointAnnotationOptions pointAnnotationOptions =
                PointAnnotationOptions(
              geometry:
                  Point(coordinates: Position(place.longitude, place.latitude)),
              image: imageData,
              iconSize: 0.3,
            );

            try {
              await pointAnnotationManager?.create(pointAnnotationOptions);
            } catch (e) {
              print('Error creating point annotation: $e');
            }
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: MapWidget(
        key: ValueKey("mapWidget"),
        cameraOptions: CameraOptions(
          center: Point(
            coordinates: Position(
              widget.centerLongitude ?? widget.places.first.longitude,
              widget.centerLatitude ?? widget.places.first.latitude,
            ),
          ),
          zoom: widget.zoom,
        ),
        styleUri: MapboxStyles.LIGHT,
        textureView: true,
        onMapCreated: _onMapCreated,
      ),
    );
  }
}

class MarkerClickListener extends OnPointAnnotationClickListener {
  final Function(PointAnnotation) onClick;

  MarkerClickListener({required this.onClick});

  @override
  void onPointAnnotationClick(PointAnnotation annotation) {
    onClick(annotation);
  }
}
