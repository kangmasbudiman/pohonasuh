import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';

List? createSupabasePlaceList(List? places) {
  return places?.map((place) {
    return PlaceStruct(
      title: place.title,
      description: place.description,
      latitude: place.latitude,
      longitude: place.longitude,
      imageUrl: place.imageUrl,
    );
  }).toList();
}
