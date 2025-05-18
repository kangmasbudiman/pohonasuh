import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detaildesa_model.dart';
export 'detaildesa_model.dart';

class DetaildesaWidget extends StatefulWidget {
  const DetaildesaWidget({
    super.key,
    required this.id,
    required this.nama,
    required this.profil,
    required this.lat,
    required this.long,
    required this.foto,
    required this.hutandesa,
  });

  final int? id;
  final String? nama;
  final String? profil;
  final String? lat;
  final String? long;
  final String? foto;
  final String? hutandesa;

  static String routeName = 'detaildesa';
  static String routePath = '/detaildesa';

  @override
  State<DetaildesaWidget> createState() => _DetaildesaWidgetState();
}

class _DetaildesaWidgetState extends State<DetaildesaWidget> {
  late DetaildesaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetaildesaModel());
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
            valueOrDefault<String>(
              widget.nama,
              'namadesa',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: RestAPiPohonAsuhGroup.sliderCall.call(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 10.0,
                            height: 10.0,
                            child: SpinKitRotatingPlain(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 10.0,
                            ),
                          ),
                        );
                      }
                      final carouselSliderResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final responslider = (carouselSliderResponse.jsonBody
                                          .toList()
                                          .map<SliderResponseStruct?>(
                                              SliderResponseStruct.maybeFromMap)
                                          .toList()
                                      as Iterable<SliderResponseStruct?>)
                                  .withoutNulls
                                  .toList() ??
                              [];

                          return Container(
                            width: double.infinity,
                            height: 200.0,
                            child: CarouselSlider.builder(
                              itemCount: responslider.length,
                              itemBuilder: (context, responsliderIndex, _) {
                                final responsliderItem =
                                    responslider[responsliderIndex];
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      responsliderItem.gambar,
                                      'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                    ),
                                    width: 200.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                              carouselController: _model.carouselController ??=
                                  CarouselSliderController(),
                              options: CarouselOptions(
                                initialPage:
                                    max(0, min(1, responslider.length - 1)),
                                viewportFraction: 0.8,
                                disableCenter: true,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.29,
                                enableInfiniteScroll: true,
                                scrollDirection: Axis.horizontal,
                                autoPlay: false,
                                onPageChanged: (index, _) =>
                                    _model.carouselCurrentIndex = index,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.profil,
                            'profildesa',
                          ),
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                FutureBuilder<ApiCallResponse>(
                  future: TreesGroup.pohodesaCall.call(
                    desa: widget.nama,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 10.0,
                          height: 10.0,
                          child: SpinKitRotatingPlain(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 10.0,
                          ),
                        ),
                      );
                    }
                    final columnPohodesaResponse = snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final responbydesa = (columnPohodesaResponse.jsonBody
                                        .toList()
                                        .map<ResponpohondesaStruct?>(
                                            ResponpohondesaStruct.maybeFromMap)
                                        .toList()
                                    as Iterable<ResponpohondesaStruct?>)
                                .withoutNulls
                                .toList() ??
                            [];

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(responbydesa.length,
                                (responbydesaIndex) {
                              final responbydesaItem =
                                  responbydesa[responbydesaIndex];
                              return Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
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
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              responbydesaItem.fotoPohon,
                                              'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                            ),
                                            width: 90.0,
                                            height: 130.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  responbydesaItem.localname,
                                                  'localname',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'Spesies: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  responbydesaItem.species,
                                                  'spesies',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                        DetailtreeWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'price':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .price,
                                                              'price',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'vilage':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .desa,
                                                              'desa',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'locaname':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .localname,
                                                              'localname',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'spesies':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .species,
                                                              'spesies',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'family':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .family,
                                                              'famili',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'slop':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .slope,
                                                              '0',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'diameter':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .keliling
                                                                  .toString(),
                                                              '0',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'circumference':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .cur,
                                                              'cur',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'height':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .tinggi
                                                                  .toString(),
                                                              '0',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'asl': serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .asl,
                                                              'asl',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'surveidate':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .tglSurvey,
                                                              'tgl_survey',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'photosby':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .fotografer,
                                                              'fotografer',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'surveyedby':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .surveyor,
                                                              'surveyor',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'adopttedby':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .pengasuh,
                                                              'pengasuh',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'tgladopt':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .tglAdopt,
                                                              'tgl_adopt',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'tglexp':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .tglExp,
                                                              'tglExp',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'idpohon':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              responbydesaItem
                                                                  .idpohon,
                                                              'idpohon',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    text: 'Detail',
                                                    options: FFButtonOptions(
                                                      height: 30.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'Adopt',
                                                    options: FFButtonOptions(
                                                      height: 30.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          valueOrDefault<Color>(
                                                        responbydesaItem
                                                                    .adopted ==
                                                                'Adopt'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                      ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 5.0)),
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  responbydesaItem.adopted,
                                                  'adopted',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ),
                                          ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
