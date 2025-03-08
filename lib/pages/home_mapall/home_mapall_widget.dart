import '';
import '/backend/api_requests/api_calls.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'home_mapall_model.dart';
export 'home_mapall_model.dart';

class HomeMapallWidget extends StatefulWidget {
  const HomeMapallWidget({super.key});

  static String routeName = 'HomeMapall';
  static String routePath = '/homeMapall';

  @override
  State<HomeMapallWidget> createState() => _HomeMapallWidgetState();
}

class _HomeMapallWidgetState extends State<HomeMapallWidget> {
  late HomeMapallModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeMapallModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      FFAppState().latlong = currentUserLocationValue;
      FFAppState().bootomsheet = false;
      FFAppState().ISLOADING = true;
      safeSetState(() {});
      _model.outputNearby = await TreesGroup.pohonmapCall.call(
        limit: 0,
      );

      FFAppState().ISLOADING = false;
      safeSetState(() {});
    });

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => safeSetState(() => currentUserLocationValue = loc));
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
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 645.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavbarWidget(
                    pageIndex: 1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 85.0),
                child: FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) =>
                      safeSetState(() => _model.googleMapsCenter = latLng),
                  initialLocation: _model.googleMapsCenter ??=
                      currentUserLocationValue!,
                  markers: (functions.doubleToLatlng(
                              TreesGroup.pohonmapCall
                                  .lat(
                                    (_model.outputNearby?.jsonBody ?? ''),
                                  )
                                  ?.toList(),
                              TreesGroup.pohonmapCall
                                  .lng(
                                    (_model.outputNearby?.jsonBody ?? ''),
                                  )
                                  ?.toList()) ??
                          [])
                      .map(
                        (marker) => FlutterFlowMarker(
                          marker.serialize(),
                          marker,
                          () async {
                            FFAppState().bootomsheet = true;
                            safeSetState(() {});
                          },
                        ),
                      )
                      .toList(),
                  markerColor: GoogleMarkerColor.red,
                  mapType: MapType.normal,
                  style: GoogleMapStyle.standard,
                  initialZoom: 12.0,
                  allowInteraction: true,
                  allowZoom: true,
                  showZoomControls: true,
                  showLocation: true,
                  showCompass: true,
                  showMapToolbar: true,
                  showTraffic: true,
                  centerMapOnMarkerTap: true,
                ),
              ),
              if (FFAppState().bootomsheet == true)
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: PointerInterceptor(
                    intercepting: isWeb,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 40.0, 20.0, 90.0),
                      child: Container(
                        width: double.infinity,
                        height: 210.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                4.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 50.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: FaIcon(
                                      FontAwesomeIcons.tree,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 20.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .localname(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'localname',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().bootomsheet = false;
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.close_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        TreesGroup.pohonmapCall
                                            .fotoPohon(
                                              (_model.outputNearby?.jsonBody ??
                                                  ''),
                                            )
                                            ?.elementAtOrNull(
                                                valueOrDefault<int>(
                                              functions.indexMarkerIdentifier(
                                                  _model.googleMapsCenter,
                                                  functions
                                                      .doubleToLatlng(
                                                          TreesGroup
                                                              .pohonmapCall
                                                              .lat(
                                                                (_model.outputNearby
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              ?.toList(),
                                                          TreesGroup
                                                              .pohonmapCall
                                                              .lng(
                                                                (_model.outputNearby
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              ?.toList())
                                                      ?.toList()),
                                              0,
                                            )),
                                        'fotopohon',
                                      ),
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Spesies : ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    TreesGroup.pohonmapCall
                                                        .species(
                                                          (_model.outputNearby
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )
                                                        ?.elementAtOrNull(
                                                            valueOrDefault<int>(
                                                          functions.indexMarkerIdentifier(
                                                              _model.googleMapsCenter,
                                                              functions
                                                                  .doubleToLatlng(
                                                                      TreesGroup.pohonmapCall
                                                                          .lat(
                                                                            (_model.outputNearby?.jsonBody ??
                                                                                ''),
                                                                          )
                                                                          ?.toList(),
                                                                      TreesGroup.pohonmapCall
                                                                          .lng(
                                                                            (_model.outputNearby?.jsonBody ??
                                                                                ''),
                                                                          )
                                                                          ?.toList())
                                                                  ?.toList()),
                                                          0,
                                                        )),
                                                    'spesies',
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'VIllage : ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    TreesGroup.pohonmapCall
                                                        .desa(
                                                          (_model.outputNearby
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )
                                                        ?.elementAtOrNull(
                                                            valueOrDefault<int>(
                                                          functions.indexMarkerIdentifier(
                                                              _model.googleMapsCenter,
                                                              functions
                                                                  .doubleToLatlng(
                                                                      TreesGroup.pohonmapCall
                                                                          .lat(
                                                                            (_model.outputNearby?.jsonBody ??
                                                                                ''),
                                                                          )
                                                                          ?.toList(),
                                                                      TreesGroup.pohonmapCall
                                                                          .lng(
                                                                            (_model.outputNearby?.jsonBody ??
                                                                                ''),
                                                                          )
                                                                          ?.toList())
                                                                  ?.toList()),
                                                          0,
                                                        )),
                                                    'village',
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Adopted : ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    TreesGroup.pohonmapCall
                                                        .adopted(
                                                          (_model.outputNearby
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )
                                                        ?.elementAtOrNull(
                                                            valueOrDefault<int>(
                                                          functions.indexMarkerIdentifier(
                                                              _model.googleMapsCenter,
                                                              functions
                                                                  .doubleToLatlng(
                                                                      TreesGroup.pohonmapCall
                                                                          .lat(
                                                                            (_model.outputNearby?.jsonBody ??
                                                                                ''),
                                                                          )
                                                                          ?.toList(),
                                                                      TreesGroup.pohonmapCall
                                                                          .lng(
                                                                            (_model.outputNearby?.jsonBody ??
                                                                                ''),
                                                                          )
                                                                          ?.toList())
                                                                  ?.toList()),
                                                          0,
                                                        )),
                                                    'village',
                                                  ),
                                                  style: TextStyle(),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        DetailtreeWidget.routeName,
                                        queryParameters: {
                                          'price': serializeParam(
                                            valueOrDefault<String>(
                                              (TreesGroup.pohonmapCall
                                                  .harga(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )))?.toString(),
                                              'harga',
                                            ),
                                            ParamType.String,
                                          ),
                                          'vilage': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .desa(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'locaname': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .localname(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'spesies': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .species(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'family': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .family(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'slop': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .slope(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'diameter': serializeParam(
                                            valueOrDefault<String>(
                                              (TreesGroup.pohonmapCall
                                                  .diameter(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )))?.toString(),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'circumference': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .cur(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'height': serializeParam(
                                            valueOrDefault<String>(
                                              (TreesGroup.pohonmapCall
                                                  .tinggi(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )))?.toString(),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'asl': serializeParam(
                                            valueOrDefault<String>(
                                              (TreesGroup.pohonmapCall
                                                  .asl(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )))?.toString(),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'surveidate': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .tglsurvey(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'photosby': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .fotografer(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'surveyedby': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .surveyor(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'adopttedby': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .pengasuh(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'tgladopt': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .tgladopt(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'tglexp': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .tglexp(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                          'idpohon': serializeParam(
                                            valueOrDefault<String>(
                                              TreesGroup.pohonmapCall
                                                  .idpohon(
                                                    (_model.outputNearby
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.elementAtOrNull(
                                                      valueOrDefault<int>(
                                                    functions.indexMarkerIdentifier(
                                                        _model.googleMapsCenter,
                                                        functions
                                                            .doubleToLatlng(
                                                                TreesGroup.pohonmapCall
                                                                    .lat(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList(),
                                                                TreesGroup.pohonmapCall
                                                                    .lng(
                                                                      (_model.outputNearby
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())
                                                            ?.toList()),
                                                    0,
                                                  )),
                                              'spesies',
                                            ),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: 'Detail',
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Adopt',
                                    options: FFButtonOptions(
                                      height: 30.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 5.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              Align(
                alignment: AlignmentDirectional(-1.0, 1.0),
                child: PointerInterceptor(
                  intercepting: isWeb,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 90.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.link_rounded,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(HomeMapallWidget.routeName);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Tes',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              if (FFAppState().ISLOADING == true)
                PointerInterceptor(
                  intercepting: isWeb,
                  child: Container(
                    width: 100.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Lottie.asset(
                      'assets/jsons/Animation_-_1740749970062.json',
                      width: 200.0,
                      height: 181.51,
                      fit: BoxFit.contain,
                      animate: true,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
