import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componen/payment_choice/payment_choice_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'your_trolley_model.dart';
export 'your_trolley_model.dart';

class YourTrolleyWidget extends StatefulWidget {
  const YourTrolleyWidget({
    super.key,
    required this.idku,
    required this.jumlahtrolly,
    required this.totalharga,
    required this.totalhargaInt,
  });

  final int? idku;
  final int? jumlahtrolly;
  final String? totalharga;
  final int? totalhargaInt;

  static String routeName = 'YourTrolley';
  static String routePath = '/yourTrolley';

  @override
  State<YourTrolleyWidget> createState() => _YourTrolleyWidgetState();
}

class _YourTrolleyWidgetState extends State<YourTrolleyWidget> {
  late YourTrolleyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YourTrolleyModel());

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
        FFAppState().grandtotalstring = _model.newResult!.toString();
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
                'Your Troley',
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
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.shopping_cart_sharp,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 200.0,
                      ),
                      Text(
                        'Confirm Your Payment',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        'Total Adopted',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        formatNumber(
                          (widget.totalhargaInt!) + (widget.idku!),
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.automatic,
                          currency: 'Rp. ',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Builder(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.7,
                                      width: double.infinity,
                                      child: PaymentChoiceWidget(),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
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
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: FaIcon(
                                      FontAwesomeIcons.moneyBillAlt,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 20.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Payment Method',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'The total paymanet will be added to the unique code, please pay according to the ammount added with the unique code',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.resultSum =
                                await actions.sumdimemberandgrandtotal(
                              widget.idku!,
                              widget.totalhargaInt!,
                            );
                            _model.apiResultmz2 =
                                await PaymentGroup.confirmationCall.call(
                              jmlPohon: valueOrDefault<String>(
                                widget.jumlahtrolly?.toString(),
                                '0',
                              ),
                              price: valueOrDefault<String>(
                                _model.resultSum?.toString(),
                                '0',
                              ),
                              methode: 'Transfer',
                              email: currentUserData?.email,
                              name: currentUserData?.name,
                              idMember: valueOrDefault<String>(
                                currentUserData?.id.toString(),
                                '0',
                              ),
                            );

                            if ((_model.apiResultmz2?.succeeded ?? true)) {
                              context.pushNamed(
                                CheckoutorderWidget.routeName,
                                queryParameters: {
                                  'iconbank': serializeParam(
                                    FFAppState().iconbank,
                                    ParamType.String,
                                  ),
                                  'atasnama': serializeParam(
                                    FFAppState().atasnama,
                                    ParamType.String,
                                  ),
                                  'norek': serializeParam(
                                    FFAppState().norek,
                                    ParamType.String,
                                  ),
                                  'rupiah': serializeParam(
                                    widget.totalharga,
                                    ParamType.String,
                                  ),
                                  'jumlahpohon': serializeParam(
                                    valueOrDefault<String>(
                                      widget.jumlahtrolly?.toString(),
                                      '0',
                                    ),
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Information'),
                                    content: Text('Checkout Faild'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }

                            safeSetState(() {});
                          },
                          text: 'Contineu',
                          icon: Icon(
                            Icons.payment,
                            size: 25.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
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
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
