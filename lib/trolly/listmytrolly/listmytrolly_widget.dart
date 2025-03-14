import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'listmytrolly_model.dart';
export 'listmytrolly_model.dart';

class ListmytrollyWidget extends StatefulWidget {
  const ListmytrollyWidget({super.key});

  static String routeName = 'Listmytrolly';
  static String routePath = '/listmytrolly';

  @override
  State<ListmytrollyWidget> createState() => _ListmytrollyWidgetState();
}

class _ListmytrollyWidgetState extends State<ListmytrollyWidget> {
  late ListmytrollyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListmytrollyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultlj3 = await TrollyGroup.mytrolleyCall.call(
        idmember: currentUserData?.id.toString(),
      );

      if ((_model.apiResultlj3?.succeeded ?? true)) {
        FFAppState().cartItem =
            (_model.apiResultlj3?.jsonBody ?? '').toList().cast<dynamic>();
        safeSetState(() {});
        _model.newResult = await actions.newCustomAction(
          (_model.apiResultlj3?.jsonBody ?? ''),
        );
        FFAppState().grandtotalstring = formatNumber(
          _model.newResult,
          formatType: FormatType.decimal,
          decimalType: DecimalType.automatic,
          currency: 'Rp. ',
        );
        safeSetState(() {});
        FFAppState().grandtotal = _model.newResult!;
        safeSetState(() {});
        _model.countResult = await actions.countItem(
          (_model.apiResultlj3?.jsonBody ?? ''),
        );
        FFAppState().jumlahtrolley = _model.countResult!;
        safeSetState(() {});
      }
    });
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              title: Text(
                'My Trolly',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Inter Tight',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Stack(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  children: [
                    FutureBuilder<ApiCallResponse>(
                      future: TrollyGroup.mytrolleyCall.call(
                        idmember: currentUserData?.id.toString(),
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
                        final conditionalBuilderMytrolleyResponse =
                            snapshot.data!;

                        return Builder(
                          builder: (context) {
                            if (((conditionalBuilderMytrolleyResponse.jsonBody
                                                .toList()
                                                .map<ResponmyrtrollyStruct?>(
                                                    ResponmyrtrollyStruct
                                                        .maybeFromMap)
                                                .toList()
                                            as Iterable<ResponmyrtrollyStruct?>)
                                        .withoutNulls)
                                    .isNotEmpty) {
                              return FutureBuilder<ApiCallResponse>(
                                future: TrollyGroup.mytrolleyCall.call(
                                  idmember: currentUserData?.id.toString(),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 10.0,
                                        height: 10.0,
                                        child: SpinKitRotatingPlain(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 10.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final columnMytrolleyResponse =
                                      snapshot.data!;

                                  return Builder(
                                    builder: (context) {
                                      final responsemYtrolly = (columnMytrolleyResponse
                                                      .jsonBody
                                                      .toList()
                                                      .map<ResponmyrtrollyStruct?>(
                                                          ResponmyrtrollyStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      ResponmyrtrollyStruct?>)
                                              .withoutNulls
                                              .toList() ??
                                          [];

                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.apiResultuxo =
                                              await TrollyGroup.mytrolleyCall
                                                  .call(
                                            idmember:
                                                currentUserData?.id.toString(),
                                          );

                                          if ((_model.apiResultuxo?.succeeded ??
                                              true)) {
                                            FFAppState()
                                                .cartItem = (conditionalBuilderMytrolleyResponse
                                                        .jsonBody
                                                        .toList()
                                                        .map<ResponmyrtrollyStruct?>(
                                                            ResponmyrtrollyStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        ResponmyrtrollyStruct?>)
                                                .withoutNulls
                                                .map((e) => e.toMap())
                                                .toList()
                                                .cast<dynamic>();
                                            safeSetState(() {});
                                          }

                                          safeSetState(() {});
                                        },
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: List.generate(
                                                responsemYtrolly.length,
                                                (responsemYtrollyIndex) {
                                              final responsemYtrollyItem =
                                                  responsemYtrolly[
                                                      responsemYtrollyIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 8.0, 16.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                12.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              responsemYtrollyItem
                                                                  .fotoPohon,
                                                              'https://rest.pohonasuh.org/assets/no-image-icon-23483.png',
                                                            ),
                                                            width: 70.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    '(',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      responsemYtrollyItem
                                                                          .idpohon,
                                                                      '-',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    ')',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  AutoSizeText(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      responsemYtrollyItem
                                                                          .localname,
                                                                      '-',
                                                                    ).maybeHandleOverflow(
                                                                      maxChars:
                                                                          15,
                                                                      replacement:
                                                                          '…',
                                                                    ),
                                                                    maxLines: 1,
                                                                    minFontSize:
                                                                        10.0,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'Village: ',
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
                                                                    TextSpan(
                                                                      text: valueOrDefault<
                                                                          String>(
                                                                        responsemYtrollyItem
                                                                            .desa,
                                                                        'vilage',
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
                                                                    )
                                                                  ],
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
                                                              RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'Price : ',
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
                                                                    TextSpan(
                                                                      text: valueOrDefault<
                                                                          String>(
                                                                        formatNumber(
                                                                          responsemYtrollyItem
                                                                              .harga,
                                                                          formatType:
                                                                              FormatType.decimal,
                                                                          decimalType:
                                                                              DecimalType.automatic,
                                                                          currency:
                                                                              'Rp. ',
                                                                        ),
                                                                        'price',
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
                                                                    )
                                                                  ],
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
                                                            ].divide(SizedBox(
                                                                height: 5.0)),
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            var _shouldSetState =
                                                                false;
                                                            var confirmDialogResponse =
                                                                await showDialog<
                                                                        bool>(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Confirmation'),
                                                                          content:
                                                                              Text('Are Your Sure delete this trees'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                              child: Text('Cancel'),
                                                                            ),
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                              child: Text('Confirm'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ) ??
                                                                    false;
                                                            if (confirmDialogResponse) {
                                                              _model.apiResultb6k =
                                                                  await TrollyGroup
                                                                      .deletetrollyCall
                                                                      .call(
                                                                id: valueOrDefault<
                                                                    String>(
                                                                  responsemYtrollyItem
                                                                      .id
                                                                      .toString(),
                                                                  '0',
                                                                ),
                                                              );

                                                              _shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .apiResultb6k
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                _model.apiResultlj33 =
                                                                    await TrollyGroup
                                                                        .mytrolleyCall
                                                                        .call(
                                                                  idmember:
                                                                      currentUserData
                                                                          ?.id
                                                                          .toString(),
                                                                );

                                                                _shouldSetState =
                                                                    true;
                                                                if ((_model
                                                                        .apiResultlj33
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                      .cartItem = (_model
                                                                              .apiResultlj33
                                                                              ?.jsonBody ??
                                                                          '')
                                                                      .toList()
                                                                      .cast<
                                                                          dynamic>();
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.newResultt =
                                                                      await actions
                                                                          .newCustomAction(
                                                                    (_model.apiResultlj33
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  );
                                                                  _shouldSetState =
                                                                      true;
                                                                  FFAppState()
                                                                          .grandtotalstring =
                                                                      valueOrDefault<
                                                                          String>(
                                                                    formatNumber(
                                                                      _model
                                                                          .newResultt,
                                                                      formatType:
                                                                          FormatType
                                                                              .decimal,
                                                                      decimalType:
                                                                          DecimalType
                                                                              .automatic,
                                                                      currency:
                                                                          'Rp. ',
                                                                    ),
                                                                    '0',
                                                                  );
                                                                  safeSetState(
                                                                      () {});
                                                                  FFAppState()
                                                                          .grandtotal =
                                                                      _model
                                                                          .newResult!;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.countResultt =
                                                                      await actions
                                                                          .countItem(
                                                                    (_model.apiResultlj33
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  );
                                                                  _shouldSetState =
                                                                      true;
                                                                  FFAppState()
                                                                          .jumlahtrolley =
                                                                      valueOrDefault<
                                                                          int>(
                                                                    _model
                                                                        .countResultt,
                                                                    0,
                                                                  );
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                              }
                                                            } else {
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            }

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .delete_forever,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 5.0)),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            } else {
                              return Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 100.0,
                                    ),
                                    Text(
                                      'Empty Trolley',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        );
                      },
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Trees',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: RestAPiPohonAsuhGroup.gettrollyCall
                                        .call(
                                      idmember: valueOrDefault<String>(
                                        currentUserData?.id.toString(),
                                        '0',
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 10.0,
                                            height: 10.0,
                                            child: SpinKitRotatingPlain(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 10.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final txtJumlahTreesGettrollyResponse =
                                          snapshot.data!;

                                      return Text(
                                        valueOrDefault<String>(
                                          FFAppState().jumlahtrolley.toString(),
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Years',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 25.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: FlutterFlowCountController(
                                      decrementIconBuilder: (enabled) => Icon(
                                        Icons.remove_rounded,
                                        color: enabled
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryText
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        size: 20.0,
                                      ),
                                      incrementIconBuilder: (enabled) => Icon(
                                        Icons.add_rounded,
                                        color: enabled
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        size: 24.0,
                                      ),
                                      countBuilder: (count) => Text(
                                        count.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      count: _model.countControllerValue ??= 1,
                                      updateCount: (count) async {
                                        safeSetState(() => _model
                                            .countControllerValue = count);
                                        FFAppState().cartItemYears =
                                            _model.countControllerValue!;
                                        FFAppState().grandtotalstring =
                                            valueOrDefault<String>(
                                          formatNumber(
                                            FFAppState().cartItemYears *
                                                FFAppState().grandtotal,
                                            formatType: FormatType.decimal,
                                            decimalType: DecimalType.automatic,
                                            currency: 'Rp. ',
                                          ),
                                          '0',
                                        );
                                        safeSetState(() {});
                                      },
                                      stepSize: 1,
                                      minimum: 1,
                                      maximum: 12,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12.0, 0.0, 12.0, 0.0),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Grand Total',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      FFAppState().grandtotalstring,
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      YourTrolleyWidget.routeName,
                                      queryParameters: {
                                        'idku': serializeParam(
                                          currentUserData?.id,
                                          ParamType.int,
                                        ),
                                        'jumlahtrolly': serializeParam(
                                          FFAppState().jumlahtrolley,
                                          ParamType.int,
                                        ),
                                        'totalharga': serializeParam(
                                          valueOrDefault<String>(
                                            functions
                                                .stringToInt(FFAppState()
                                                    .grandtotalstring)
                                                ?.toString(),
                                            '0',
                                          ),
                                          ParamType.String,
                                        ),
                                        'totalhargaInt': serializeParam(
                                          valueOrDefault<int>(
                                            functions.stringToInt(
                                                FFAppState().grandtotalstring),
                                            0,
                                          ),
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  text: 'CheckOut',
                                  icon: Icon(
                                    Icons.shopping_cart_checkout_rounded,
                                    size: 25.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
