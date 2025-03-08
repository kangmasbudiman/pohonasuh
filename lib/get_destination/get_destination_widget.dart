import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'get_destination_model.dart';
export 'get_destination_model.dart';

class GetDestinationWidget extends StatefulWidget {
  const GetDestinationWidget({super.key});

  static String routeName = 'GetDestination';
  static String routePath = '/getDestination';

  @override
  State<GetDestinationWidget> createState() => _GetDestinationWidgetState();
}

class _GetDestinationWidgetState extends State<GetDestinationWidget> {
  late GetDestinationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetDestinationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: custom_widgets.PolylineGoogleMapCustomWidget(
                width: double.infinity,
                height: double.infinity,
                latStart: '-1.6418252265467013',
                lngStart: '103.58460162629748',
                latEnd: '-1.6407451725074023',
                lngEnd: '103.57966479535058',
                initialZoom: 14.0,
                polylineColor: FlutterFlowTheme.of(context).error,
                polylineWidth: 2.0,
                markerIcon: Icon(
                  Icons.location_on,
                  color: FlutterFlowTheme.of(context).warning,
                  size: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
