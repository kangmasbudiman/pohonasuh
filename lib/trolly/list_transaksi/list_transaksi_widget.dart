import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'list_transaksi_model.dart';
export 'list_transaksi_model.dart';

class ListTransaksiWidget extends StatefulWidget {
  const ListTransaksiWidget({super.key});

  static String routeName = 'listTransaksi';
  static String routePath = '/listTransaksi';

  @override
  State<ListTransaksiWidget> createState() => _ListTransaksiWidgetState();
}

class _ListTransaksiWidgetState extends State<ListTransaksiWidget> {
  late ListTransaksiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListTransaksiModel());
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
            'Transaction History',
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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
              child: FutureBuilder<ApiCallResponse>(
                future: PaymentGroup.getconfirmasiCall.call(
                  idmember: currentUserData?.id,
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
                  final columnGetconfirmasiResponse = snapshot.data!;

                  return Builder(
                    builder: (context) {
                      final response =
                          (columnGetconfirmasiResponse.jsonBody
                                          .toList()
                                          .map<ResponseGetconfirmasiStruct?>(
                                              ResponseGetconfirmasiStruct
                                                  .maybeFromMap)
                                          .toList()
                                      as Iterable<ResponseGetconfirmasiStruct?>)
                                  .withoutNulls
                                  .toList() ??
                              [];

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(response.length, (responseIndex) {
                          final responseItem = response[responseIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                UploadtransferrWidget.routeName,
                                queryParameters: {
                                  'id': serializeParam(
                                    valueOrDefault<int>(
                                      responseItem.id,
                                      0,
                                    ),
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  responseItem.confirmation == 'no'
                                      ? FlutterFlowTheme.of(context).error
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                responseItem.invoice,
                                                'invoice',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              formatNumber(
                                                responseItem.price,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.automatic,
                                                currency: 'Rp. ',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                responseItem.tanggal,
                                                'tanggal',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Confirmasi : ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        valueOrDefault<String>(
                                                      responseItem.confirmation,
                                                      'confirmation',
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
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await launchURL(
                                                    valueOrDefault<String>(
                                                  (String link,
                                                          String nomor,
                                                          String idmember,
                                                          String nominal) {
                                                    return link +
                                                        nomor +
                                                        "?text=order tree member name " +
                                                        idmember +
                                                        "" +
                                                        "Total Transfer : " +
                                                        nominal;
                                                  }(
                                                      FFAppState().linkwhatsapp,
                                                      FFAppState().nomor,
                                                      currentUserData!.name,
                                                      formatNumber(
                                                        responseItem.price,
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .automatic,
                                                        currency: 'Rp. ',
                                                      )),
                                                  '0',
                                                ));
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: Image.asset(
                                                  'assets/images/Pngtreewhatsapp_icon_social_media_9015284.png',
                                                  width: 50.0,
                                                  height: 50.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 6.0)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 120.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
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
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            responseItem.foto,
                                            'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                          ),
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).divide(SizedBox(height: 10.0)),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
