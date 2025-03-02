import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componen/app_bar/app_bar_widget.dart';
import '/componen/content_drawer/content_drawer_widget.dart';
import '/componen/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.contentDrawerModel,
            updateCallback: () => safeSetState(() {}),
            child: ContentDrawerWidget(),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: AlignmentDirectional(0.0, -1.0),
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(1.0, 58.0, 0.0, 100.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FutureBuilder<ApiCallResponse>(
                        future: RestAPiPohonAsuhGroup.sliderCall.call(),
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
                          final carouselSliderResponse = snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final responseSlider =
                                  (carouselSliderResponse.jsonBody
                                                  .toList()
                                                  .map<SliderResponseStruct?>(
                                                      SliderResponseStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<
                                                  SliderResponseStruct?>)
                                          .withoutNulls
                                          .toList() ??
                                      [];

                              return Container(
                                width: double.infinity,
                                height: 180.0,
                                child: CarouselSlider.builder(
                                  itemCount: responseSlider.length,
                                  itemBuilder:
                                      (context, responseSliderIndex, _) {
                                    final responseSliderItem =
                                        responseSlider[responseSliderIndex];
                                    return Container(
                                      width: double.infinity,
                                      height: 200.0,
                                      decoration: BoxDecoration(
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
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.network(
                                          responseSliderItem.gambar,
                                          width: double.infinity,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                  carouselController:
                                      _model.carouselController ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: max(
                                        0, min(1, responseSlider.length - 1)),
                                    viewportFraction: 0.8,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.26,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: true,
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    autoPlayInterval:
                                        Duration(milliseconds: (800 + 4000)),
                                    autoPlayCurve: Curves.linear,
                                    pauseAutoPlayInFiniteScroll: true,
                                    onPageChanged: (index, _) =>
                                        _model.carouselCurrentIndex = index,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      Divider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Height Trees..',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      FutureBuilder<ApiCallResponse>(
                        future:
                            RestAPiPohonAsuhGroup.pohonheightlightCall.call(),
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
                          final rowPohonheightlightResponse = snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final responPohonHeighlight =
                                  (rowPohonheightlightResponse
                                                  .jsonBody
                                                  .toList()
                                                  .map<ResponPohonHightlightStruct?>(
                                                      ResponPohonHightlightStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<
                                                  ResponPohonHightlightStruct?>)
                                          .withoutNulls
                                          .toList() ??
                                      [];

                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                          responPohonHeighlight.length,
                                          (responPohonHeighlightIndex) {
                                    final responPohonHeighlightItem =
                                        responPohonHeighlight[
                                            responPohonHeighlightIndex];
                                    return Container(
                                      width: 165.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0),
                                                ),
                                                child: Image.network(
                                                  responPohonHeighlightItem
                                                      .fotoPohon,
                                                  width: double.infinity,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    responPohonHeighlightItem
                                                        .localname,
                                                    'localname',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 20.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  responPohonHeighlightItem
                                                      .adopted,
                                                  'adopted',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  })
                                      .divide(SizedBox(width: 10.0))
                                      .around(SizedBox(width: 10.0)),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      Divider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'All Trees',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController',
                              Duration(milliseconds: 2000),
                              () async {
                                _model.apiResultiqa =
                                    await RestAPiPohonAsuhGroup.pohonCall.call(
                                  keyword: _model.textController.text,
                                );

                                if ((_model.apiResultiqa?.succeeded ?? true)) {
                                  safeSetState(
                                      () => _model.apiRequestCompleter = null);
                                  await _model.waitForApiRequestCompleted();
                                }

                                safeSetState(() {});
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'SearcName / Vilage',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              suffixIcon: _model.textController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.textController?.clear();
                                        _model.apiResultiqa =
                                            await RestAPiPohonAsuhGroup
                                                .pohonCall
                                                .call(
                                          keyword: _model.textController.text,
                                        );

                                        if ((_model.apiResultiqa?.succeeded ??
                                            true)) {
                                          safeSetState(() => _model
                                              .apiRequestCompleter = null);
                                          await _model
                                              .waitForApiRequestCompleted();
                                        }

                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: (_model.apiRequestCompleter ??= Completer<
                                  ApiCallResponse>()
                                ..complete(RestAPiPohonAsuhGroup.pohonCall.call(
                                  keyword: _model.textController.text,
                                )))
                              .future,
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
                            final columnPohonResponse = snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final responAllpohon =
                                    (columnPohonResponse.jsonBody
                                                    .toList()
                                                    .map<DataPohonStruct?>(
                                                        DataPohonStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<DataPohonStruct?>)
                                            .withoutNulls
                                            .toList() ??
                                        [];

                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(responAllpohon.length,
                                            (responAllpohonIndex) {
                                      final responAllpohonItem =
                                          responAllpohon[responAllpohonIndex];
                                      return Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          responAllpohonItem
                                                              .fotoPohon,
                                                          'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                                        ),
                                                        width: 90.0,
                                                        height: 100.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              responAllpohonItem
                                                                  .localname,
                                                              'localname',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'Village : ',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: valueOrDefault<
                                                                      String>(
                                                                    responAllpohonItem
                                                                        .desa,
                                                                    'desa',
                                                                  ),
                                                                  style:
                                                                      TextStyle(),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    DetailtreeWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'price':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .harga
                                                                              .toString(),
                                                                          '0',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'vilage':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .desa,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'locaname':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .localname,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'spesies':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .species,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'family':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .family,
                                                                          '0',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'slop':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .slope,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'diameter':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .diameter
                                                                              .toString(),
                                                                          '0',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'circumference':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .price,
                                                                          '0',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'height':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .tinggi
                                                                              .toString(),
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'asl':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .asl,
                                                                          '0',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'surveidate':
                                                                          serializeParam(
                                                                        '',
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'photosby':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .pengasuh,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'surveyedby':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .surveyor,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'adopttedby':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .nama,
                                                                          '0',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'tgladopt':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .tglAdopt,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'tglexp':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .price,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'idpohon':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          responAllpohonItem
                                                                              .idpohon,
                                                                          'idpohon',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                text: 'Detail',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed: () {
                                                                  print(
                                                                      'Button pressed ...');
                                                                },
                                                                text: 'Adopt',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 5.0)),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 10.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      responAllpohonItem
                                                          .adopted,
                                                      'adopted',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavbarWidget(
                    pageIndex: 3,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: wrapWithModel(
                  model: _model.appBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppBarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
