import '/componen/app_bar/app_bar_widget.dart';
import '/componen/content_drawer/content_drawer_widget.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_mytree_widget.dart' show HomeMytreeWidget;
import 'package:flutter/material.dart';

class HomeMytreeModel extends FlutterFlowModel<HomeMytreeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for appBar component.
  late AppBarModel appBarModel;
  // Model for ContentDrawer component.
  late ContentDrawerModel contentDrawerModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    appBarModel = createModel(context, () => AppBarModel());
    contentDrawerModel = createModel(context, () => ContentDrawerModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    appBarModel.dispose();
    contentDrawerModel.dispose();
  }
}
