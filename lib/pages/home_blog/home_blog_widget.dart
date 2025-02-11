import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componen/app_bar/app_bar_widget.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'home_blog_model.dart';
export 'home_blog_model.dart';

class HomeBlogWidget extends StatefulWidget {
  const HomeBlogWidget({super.key});

  @override
  State<HomeBlogWidget> createState() => _HomeBlogWidgetState();
}

class _HomeBlogWidgetState extends State<HomeBlogWidget> {
  late HomeBlogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeBlogModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult0ok = await RestAPiPohonAsuhGroup.blogCall.call();

      if ((_model.apiResult0ok?.succeeded ?? true)) {
        FFAppState().ISLOADING = false;
        safeSetState(() {});
      }
    });

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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 2.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future:
                                    RestAPiPohonAsuhGroup.blogFirstCall.call(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 20.0,
                                        height: 20.0,
                                        child: SpinKitThreeBounce(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 20.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final stackBlogFirstResponse = snapshot.data!;

                                  return Stack(
                                    alignment: const AlignmentDirectional(-1.0, 1.0),
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'deskripsi',
                                            queryParameters: {
                                              'judul': serializeParam(
                                                ResponsenewblogfirstStruct
                                                        .maybeFromMap(
                                                            stackBlogFirstResponse
                                                                .jsonBody)
                                                    ?.name,
                                                ParamType.String,
                                              ),
                                              'deskripsi': serializeParam(
                                                ResponsenewblogfirstStruct
                                                        .maybeFromMap(
                                                            stackBlogFirstResponse
                                                                .jsonBody)
                                                    ?.deskripsi,
                                                ParamType.String,
                                              ),
                                              'posted': serializeParam(
                                                ResponsenewblogfirstStruct
                                                        .maybeFromMap(
                                                            stackBlogFirstResponse
                                                                .jsonBody)
                                                    ?.nama,
                                                ParamType.String,
                                              ),
                                              'view': serializeParam(
                                                ResponsenewblogfirstStruct
                                                        .maybeFromMap(
                                                            stackBlogFirstResponse
                                                                .jsonBody)
                                                    ?.viewer,
                                                ParamType.int,
                                              ),
                                              'cover': serializeParam(
                                                valueOrDefault<String>(
                                                  ResponsenewblogfirstStruct
                                                          .maybeFromMap(
                                                              stackBlogFirstResponse
                                                                  .jsonBody)
                                                      ?.cover,
                                                  'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                                ),
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                ResponsenewblogfirstStruct
                                                        .maybeFromMap(
                                                            stackBlogFirstResponse
                                                                .jsonBody)
                                                    ?.cover,
                                                'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                              ),
                                              width: double.infinity,
                                              height: 200.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'deskripsi',
                                                queryParameters: {
                                                  'judul': serializeParam(
                                                    ResponsenewblogfirstStruct
                                                            .maybeFromMap(
                                                                stackBlogFirstResponse
                                                                    .jsonBody)
                                                        ?.name,
                                                    ParamType.String,
                                                  ),
                                                  'deskripsi': serializeParam(
                                                    ResponsenewblogfirstStruct
                                                            .maybeFromMap(
                                                                stackBlogFirstResponse
                                                                    .jsonBody)
                                                        ?.deskripsi,
                                                    ParamType.String,
                                                  ),
                                                  'posted': serializeParam(
                                                    ResponsenewblogfirstStruct
                                                            .maybeFromMap(
                                                                stackBlogFirstResponse
                                                                    .jsonBody)
                                                        ?.nama,
                                                    ParamType.String,
                                                  ),
                                                  'view': serializeParam(
                                                    ResponsenewblogfirstStruct
                                                            .maybeFromMap(
                                                                stackBlogFirstResponse
                                                                    .jsonBody)
                                                        ?.viewer,
                                                    ParamType.int,
                                                  ),
                                                  'cover': serializeParam(
                                                    ResponsenewblogfirstStruct
                                                            .maybeFromMap(
                                                                stackBlogFirstResponse
                                                                    .jsonBody)
                                                        ?.cover,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: 250.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    const Color(0x7AF1F4F8),
                                                    FlutterFlowTheme.of(context)
                                                        .alternate
                                                  ],
                                                  stops: const [0.0, 1.0],
                                                  begin: const AlignmentDirectional(
                                                      0.0, -1.0),
                                                  end: const AlignmentDirectional(
                                                      0, 1.0),
                                                ),
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(20.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    ResponsenewblogfirstStruct
                                                            .maybeFromMap(
                                                                stackBlogFirstResponse
                                                                    .jsonBody)
                                                        ?.name,
                                                    'judul',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            if (FFAppState().ISLOADING == false)
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().klikArtikel = 'Artikel';
                                        safeSetState(() {});
                                      },
                                      text: 'Artikel',
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FFAppState().klikArtikel ==
                                                'Artikel'
                                            ? FlutterFlowTheme.of(context)
                                                .tertiary
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: FFAppState().klikArtikel ==
                                                      'Artikel'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().klikArtikel = 'berita';
                                        safeSetState(() {});
                                      },
                                      text: 'Blog',
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color:
                                            FFAppState().klikArtikel == 'berita'
                                                ? FlutterFlowTheme.of(context)
                                                    .tertiary
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color: FFAppState().klikArtikel ==
                                                      'berita'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 100.0),
                              child: Builder(
                                builder: (context) {
                                  if (FFAppState().klikArtikel == 'Artikel') {
                                    return FutureBuilder<ApiCallResponse>(
                                      future: RestAPiPohonAsuhGroup
                                          .blogByfilterCall
                                          .call(
                                        kategori: FFAppState().klikArtikel,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 20.0,
                                              height: 20.0,
                                              child: SpinKitThreeBounce(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final columnBlogByfilterResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final responseBlogFilter =
                                                (columnBlogByfilterResponse
                                                                .jsonBody
                                                                .toList()
                                                                .map<ResponBlogByFilterStruct?>(
                                                                    ResponBlogByFilterStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ResponBlogByFilterStruct?>)
                                                        .withoutNulls
                                                        .toList() ??
                                                    [];

                                            return SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    responseBlogFilter.length,
                                                    (responseBlogFilterIndex) {
                                                  final responseBlogFilterItem =
                                                      responseBlogFilter[
                                                          responseBlogFilterIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 5.0,
                                                                20.0, 10.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'deskripsi',
                                                          queryParameters: {
                                                            'judul':
                                                                serializeParam(
                                                              responseBlogFilterItem
                                                                  .name,
                                                              ParamType.String,
                                                            ),
                                                            'deskripsi':
                                                                serializeParam(
                                                              responseBlogFilterItem
                                                                  .deskripsi,
                                                              ParamType.String,
                                                            ),
                                                            'posted':
                                                                serializeParam(
                                                              responseBlogFilterItem
                                                                  .nama,
                                                              ParamType.String,
                                                            ),
                                                            'view':
                                                                serializeParam(
                                                              responseBlogFilterItem
                                                                  .viewer,
                                                              ParamType.int,
                                                            ),
                                                            'cover':
                                                                serializeParam(
                                                              responseBlogFilterItem
                                                                  .cover,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 321.19,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  responseBlogFilterItem
                                                                      .cover,
                                                                  'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                                                ),
                                                                width: double
                                                                    .infinity,
                                                                height: 200.0,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    responseBlogFilterItem
                                                                        .name,
                                                                    'name',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        0.0,
                                                                        20.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    responseBlogFilterItem
                                                                        .deskripsi,
                                                                    'deskripsi',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 10.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  } else if (FFAppState().klikArtikel ==
                                      'berita') {
                                    return FutureBuilder<ApiCallResponse>(
                                      future: RestAPiPohonAsuhGroup
                                          .blogByfilterCall
                                          .call(
                                        kategori: FFAppState().klikArtikel,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 20.0,
                                              height: 20.0,
                                              child: SpinKitThreeBounce(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final columnBlogByfilterResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final responblogbyfilter =
                                                (columnBlogByfilterResponse
                                                                .jsonBody
                                                                .toList()
                                                                .map<ResponBlogByFilterStruct?>(
                                                                    ResponBlogByFilterStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ResponBlogByFilterStruct?>)
                                                        .withoutNulls
                                                        .toList() ??
                                                    [];

                                            return SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    responblogbyfilter.length,
                                                    (responblogbyfilterIndex) {
                                                  final responblogbyfilterItem =
                                                      responblogbyfilter[
                                                          responblogbyfilterIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 5.0,
                                                                20.0, 10.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'deskripsi',
                                                          queryParameters: {
                                                            'judul':
                                                                serializeParam(
                                                              responblogbyfilterItem
                                                                  .name,
                                                              ParamType.String,
                                                            ),
                                                            'deskripsi':
                                                                serializeParam(
                                                              responblogbyfilterItem
                                                                  .deskripsi,
                                                              ParamType.String,
                                                            ),
                                                            'posted':
                                                                serializeParam(
                                                              responblogbyfilterItem
                                                                  .nama,
                                                              ParamType.String,
                                                            ),
                                                            'view':
                                                                serializeParam(
                                                              responblogbyfilterItem
                                                                  .viewer,
                                                              ParamType.int,
                                                            ),
                                                            'cover':
                                                                serializeParam(
                                                              responblogbyfilterItem
                                                                  .cover,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 321.19,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  responblogbyfilterItem
                                                                      .cover,
                                                                  'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                                                ),
                                                                width: double
                                                                    .infinity,
                                                                height: 200.0,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    responblogbyfilterItem
                                                                        .name,
                                                                    'name',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        0.0,
                                                                        20.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    responblogbyfilterItem
                                                                        .deskripsi,
                                                                    'deskripsi',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 10.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  } else {
                                    return FutureBuilder<ApiCallResponse>(
                                      future:
                                          RestAPiPohonAsuhGroup.blogCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 20.0,
                                              height: 20.0,
                                              child: SpinKitThreeBounce(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final columnBlogResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final responallblog = (columnBlogResponse
                                                            .jsonBody
                                                            .toList()
                                                            .map<ResponAllBlogStruct?>(
                                                                ResponAllBlogStruct
                                                                    .maybeFromMap)
                                                            .toList()
                                                        as Iterable<
                                                            ResponAllBlogStruct?>)
                                                    .withoutNulls
                                                    .toList() ??
                                                [];

                                            return SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    responallblog.length,
                                                    (responallblogIndex) {
                                                  final responallblogItem =
                                                      responallblog[
                                                          responallblogIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 5.0,
                                                                20.0, 10.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'deskripsi',
                                                          queryParameters: {
                                                            'judul':
                                                                serializeParam(
                                                              valueOrDefault<
                                                                  String>(
                                                                responallblogItem
                                                                    .name,
                                                                'name',
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                            'deskripsi':
                                                                serializeParam(
                                                              valueOrDefault<
                                                                  String>(
                                                                responallblogItem
                                                                    .deskripsi,
                                                                'deskripsi',
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                            'posted':
                                                                serializeParam(
                                                              valueOrDefault<
                                                                  String>(
                                                                responallblogItem
                                                                    .nama,
                                                                'posted',
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                            'view':
                                                                serializeParam(
                                                              valueOrDefault<
                                                                  int>(
                                                                responallblogItem
                                                                    .viewer,
                                                                0,
                                                              ),
                                                              ParamType.int,
                                                            ),
                                                            'cover':
                                                                serializeParam(
                                                              responallblogItem
                                                                  .cover,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 321.19,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  responallblogItem
                                                                      .cover,
                                                                  'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                                                ),
                                                                width: double
                                                                    .infinity,
                                                                height: 200.0,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    responallblogItem
                                                                        .name,
                                                                    'name',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        0.0,
                                                                        20.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    responallblogItem
                                                                        .deskripsi,
                                                                    'deskripsi',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 10.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  }
                                },
                              ),
                            ),
                          ].divide(const SizedBox(height: 5.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.navbarModel,
                updateCallback: () => safeSetState(() {}),
                child: const NavbarWidget(
                  pageIndex: 4,
                ),
              ),
              wrapWithModel(
                model: _model.appBarModel,
                updateCallback: () => safeSetState(() {}),
                child: const AppBarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
