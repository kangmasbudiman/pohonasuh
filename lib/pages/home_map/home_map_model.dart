import '/backend/schema/structs/index.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_map_widget.dart' show HomeMapWidget;
import 'package:flutter/material.dart';

class HomeMapModel extends FlutterFlowModel<HomeMapWidget> {
  ///  Local state fields for this page.

  List<ReponPohonMapStruct> pohonmap = [];
  void addToPohonmap(ReponPohonMapStruct item) => pohonmap.add(item);
  void removeFromPohonmap(ReponPohonMapStruct item) => pohonmap.remove(item);
  void removeAtIndexFromPohonmap(int index) => pohonmap.removeAt(index);
  void insertAtIndexInPohonmap(int index, ReponPohonMapStruct item) =>
      pohonmap.insert(index, item);
  void updatePohonmapAtIndex(
          int index, Function(ReponPohonMapStruct) updateFn) =>
      pohonmap[index] = updateFn(pohonmap[index]);

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
