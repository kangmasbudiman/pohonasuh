import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detailtree_widget.dart' show DetailtreeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailtreeModel extends FlutterFlowModel<DetailtreeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (tobasket)] action in Button widget.
  ApiCallResponse? apiResultmtf;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
