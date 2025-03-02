import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'confirmasi_model.dart';
export 'confirmasi_model.dart';

class ConfirmasiWidget extends StatefulWidget {
  const ConfirmasiWidget({
    super.key,
    required this.image,
    required this.id,
    required this.iduser,
  });

  final String? image;
  final int? id;
  final int? iduser;

  @override
  State<ConfirmasiWidget> createState() => _ConfirmasiWidgetState();
}

class _ConfirmasiWidgetState extends State<ConfirmasiWidget> {
  late ConfirmasiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmasiModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        width: 500.0,
        constraints: BoxConstraints(
          maxWidth: 570.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.image!,
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          ViewtransaksiWidget.routeName,
                          queryParameters: {
                            'image': serializeParam(
                              widget.image,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Image    ',
                      icon: Icon(
                        Icons.image,
                        size: 35.0,
                      ),
                      options: FFButtonOptions(
                        height: 44.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        hoverColor: FlutterFlowTheme.of(context).alternate,
                        hoverBorderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        hoverTextColor:
                            FlutterFlowTheme.of(context).primaryText,
                        hoverElevation: 3.0,
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        var confirmDialogResponse = await showDialog<bool>(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Confirmation'),
                                  content: Text('Are You Sure To verivication'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, false),
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, true),
                                      child: Text('Confirm'),
                                    ),
                                  ],
                                );
                              },
                            ) ??
                            false;
                        if (confirmDialogResponse) {
                          _model.apiResult22q =
                              await PaymentGroup.verivicationCall.call(
                            id: widget.id,
                            iduser: widget.iduser,
                          );

                          if ((_model.apiResult22q?.succeeded ?? true)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Information'),
                                  content: Text('Verivication Success'),
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
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Information'),
                                  content: Text('Verification Faild'),
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

                          Navigator.pop(context);
                        } else {
                          Navigator.pop(context);
                        }

                        safeSetState(() {});
                      },
                      text: 'Approve',
                      icon: Icon(
                        Icons.check_circle,
                        size: 30.0,
                      ),
                      options: FFButtonOptions(
                        height: 44.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        iconAlignment: IconAlignment.end,
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter Tight',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        hoverColor: FlutterFlowTheme.of(context).accent1,
                        hoverBorderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        hoverTextColor:
                            FlutterFlowTheme.of(context).primaryText,
                        hoverElevation: 0.0,
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ),
            ].divide(SizedBox(height: 4.0)).addToEnd(SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
