import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detaildesa_widget.dart' show DetaildesaWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetaildesaModel extends FlutterFlowModel<DetaildesaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
