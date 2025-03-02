import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    super.key,
    required this.pageIndex,
  });

  final int? pageIndex;

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Stack(
        alignment: AlignmentDirectional(0.0, 1.0),
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SvgPicture.asset(
                'assets/images/navbar_6_bg_white.svg',
                width: double.infinity,
                height: 107.0,
                fit: BoxFit.fitWidth,
                alignment: Alignment(0.0, 1.0),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                curve: Curves.easeIn,
                width: double.infinity,
                height: 75.0,
                decoration: BoxDecoration(),
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              HomeMapWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: Builder(
                            builder: (context) {
                              if (widget.pageIndex == 1) {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 17.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                        ),
                                      ),
                                      Icon(
                                        Icons.map,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Map',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                );
                              } else {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 17.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      Icon(
                                        Icons.map_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Map',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              HomeVilageWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: Builder(
                            builder: (context) {
                              if (widget.pageIndex == 2) {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 17.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                        ),
                                      ),
                                      Icon(
                                        Icons.terrain_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Village',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                );
                              } else {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 17.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      Icon(
                                        Icons.terrain_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Village',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              HomeBlogWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: Builder(
                            builder: (context) {
                              if (widget.pageIndex == 4) {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 17.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                        ),
                                      ),
                                      Icon(
                                        Icons.newspaper_sharp,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Blog',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                );
                              } else {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 17.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      Icon(
                                        Icons.newspaper_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Blog',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              HomeMytreeWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: Builder(
                            builder: (context) {
                              if (widget.pageIndex == 5) {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 17.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      Icon(
                                        Icons.forest,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'My Tree',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                );
                              } else {
                                return Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 17.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      Icon(
                                        Icons.forest,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'My Tree',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 5.0)),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          HomePageWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                      },
                      child: Container(
                        width: 55.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          shape: BoxShape.circle,
                        ),
                        child: Builder(
                          builder: (context) {
                            if (widget.pageIndex == 3) {
                              return Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.leaf,
                                  color: FlutterFlowTheme.of(context).warning,
                                  size: 24.0,
                                ),
                              );
                            } else {
                              return Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.leaf,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 24.0,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Trees',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(SizedBox(height: 10.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
