import '/backend/api_requests/api_calls.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'home_map_model.dart';
export 'home_map_model.dart';

class HomeMapWidget extends StatefulWidget {
  const HomeMapWidget({super.key});

  static String routeName = 'HomeMap';
  static String routePath = '/homeMap';

  @override
  State<HomeMapWidget> createState() => _HomeMapWidgetState();
}

class _HomeMapWidgetState extends State<HomeMapWidget> {
  late HomeMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeMapModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      FFAppState().latlong = currentUserLocationValue;
      safeSetState(() {});
    });

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => safeSetState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 20.0,
            height: 20.0,
            child: SpinKitThreeBounce(
              color: FlutterFlowTheme.of(context).primary,
              size: 20.0,
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Text(
            'mantap',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              wrapWithModel(
                model: _model.navbarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavbarWidget(
                  pageIndex: 1,
                ),
              ),
              FutureBuilder<ApiCallResponse>(
                future: TreesGroup.pohonmapCall.call(
                  limit: 100,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 20.0,
                        height: 20.0,
                        child: SpinKitThreeBounce(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                      ),
                    );
                  }
                  final googleMapPohonmapResponse = snapshot.data!;

                  return FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) =>
                        safeSetState(() => _model.googleMapsCenter = latLng),
                    initialLocation: _model.googleMapsCenter ??=
                        currentUserLocationValue!,
                    markers: functions
                        .stringToLatLng(getJsonField(
                          googleMapPohonmapResponse.jsonBody,
                          r'''$.location''',
                        ))
                        .map(
                          (marker) => FlutterFlowMarker(
                            marker.serialize(),
                            marker,
                          ),
                        )
                        .toList(),
                    markerColor: GoogleMarkerColor.cyan,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.dark,
                    initialZoom: 14.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: true,
                    showMapToolbar: true,
                    showTraffic: true,
                    centerMapOnMarkerTap: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
