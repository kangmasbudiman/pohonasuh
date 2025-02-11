import '/componen/app_bar/app_bar_widget.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_mytree_widget.dart' show HomeMytreeWidget;
import 'package:flutter/material.dart';

class HomeMytreeModel extends FlutterFlowModel<HomeMytreeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for appBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    appBarModel.dispose();
  }
}
