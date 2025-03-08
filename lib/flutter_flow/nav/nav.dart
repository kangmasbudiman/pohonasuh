import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';


import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  PohonAsuhAuthUser? initialUser;
  PohonAsuhAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(PohonAsuhAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePageWidget() : OnboardingWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : OnboardingWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: LoginRegisterWidget.routeName,
          path: LoginRegisterWidget.routePath,
          builder: (context, params) => LoginRegisterWidget(),
        ),
        FFRoute(
          name: LoginRegister2Widget.routeName,
          path: LoginRegister2Widget.routePath,
          builder: (context, params) => LoginRegister2Widget(
            tabbar: params.getParam(
              'tabbar',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: HomeMapWidget.routeName,
          path: HomeMapWidget.routePath,
          builder: (context, params) => HomeMapWidget(),
        ),
        FFRoute(
          name: HomeVilageWidget.routeName,
          path: HomeVilageWidget.routePath,
          builder: (context, params) => HomeVilageWidget(),
        ),
        FFRoute(
          name: HomeBlogWidget.routeName,
          path: HomeBlogWidget.routePath,
          builder: (context, params) => HomeBlogWidget(),
        ),
        FFRoute(
          name: HomeMytreeWidget.routeName,
          path: HomeMytreeWidget.routePath,
          builder: (context, params) => HomeMytreeWidget(),
        ),
        FFRoute(
          name: AboutusWidget.routeName,
          path: AboutusWidget.routePath,
          builder: (context, params) => AboutusWidget(),
        ),
        FFRoute(
          name: RulesWidget.routeName,
          path: RulesWidget.routePath,
          builder: (context, params) => RulesWidget(),
        ),
        FFRoute(
          name: FaqWidget.routeName,
          path: FaqWidget.routePath,
          builder: (context, params) => FaqWidget(),
        ),
        FFRoute(
          name: ContactUsWidget.routeName,
          path: ContactUsWidget.routePath,
          builder: (context, params) => ContactUsWidget(),
        ),
        FFRoute(
          name: DeskripsiWidget.routeName,
          path: DeskripsiWidget.routePath,
          builder: (context, params) => DeskripsiWidget(
            judul: params.getParam(
              'judul',
              ParamType.String,
            ),
            deskripsi: params.getParam(
              'deskripsi',
              ParamType.String,
            ),
            posted: params.getParam(
              'posted',
              ParamType.String,
            ),
            view: params.getParam(
              'view',
              ParamType.int,
            ),
            cover: params.getParam(
              'cover',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: HomePageCopyWidget.routeName,
          path: HomePageCopyWidget.routePath,
          builder: (context, params) => HomePageCopyWidget(),
        ),
        FFRoute(
          name: DetailtreeWidget.routeName,
          path: DetailtreeWidget.routePath,
          builder: (context, params) => DetailtreeWidget(
            price: params.getParam(
              'price',
              ParamType.String,
            ),
            vilage: params.getParam(
              'vilage',
              ParamType.String,
            ),
            locaname: params.getParam(
              'locaname',
              ParamType.String,
            ),
            spesies: params.getParam(
              'spesies',
              ParamType.String,
            ),
            family: params.getParam(
              'family',
              ParamType.String,
            ),
            slop: params.getParam(
              'slop',
              ParamType.String,
            ),
            diameter: params.getParam(
              'diameter',
              ParamType.String,
            ),
            circumference: params.getParam(
              'circumference',
              ParamType.String,
            ),
            height: params.getParam(
              'height',
              ParamType.String,
            ),
            asl: params.getParam(
              'asl',
              ParamType.String,
            ),
            surveidate: params.getParam(
              'surveidate',
              ParamType.String,
            ),
            photosby: params.getParam(
              'photosby',
              ParamType.String,
            ),
            surveyedby: params.getParam(
              'surveyedby',
              ParamType.String,
            ),
            adopttedby: params.getParam(
              'adopttedby',
              ParamType.String,
            ),
            tgladopt: params.getParam(
              'tgladopt',
              ParamType.String,
            ),
            tglexp: params.getParam(
              'tglexp',
              ParamType.String,
            ),
            idpohon: params.getParam(
              'idpohon',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ListmytrollyWidget.routeName,
          path: ListmytrollyWidget.routePath,
          builder: (context, params) => ListmytrollyWidget(),
        ),
        FFRoute(
          name: YourTrolleyWidget.routeName,
          path: YourTrolleyWidget.routePath,
          builder: (context, params) => YourTrolleyWidget(
            idku: params.getParam(
              'idku',
              ParamType.int,
            ),
            jumlahtrolly: params.getParam(
              'jumlahtrolly',
              ParamType.int,
            ),
            totalharga: params.getParam(
              'totalharga',
              ParamType.String,
            ),
            totalhargaInt: params.getParam(
              'totalhargaInt',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: CheckoutorderWidget.routeName,
          path: CheckoutorderWidget.routePath,
          builder: (context, params) => CheckoutorderWidget(
            iconbank: params.getParam(
              'iconbank',
              ParamType.String,
            ),
            atasnama: params.getParam(
              'atasnama',
              ParamType.String,
            ),
            norek: params.getParam(
              'norek',
              ParamType.String,
            ),
            rupiah: params.getParam(
              'rupiah',
              ParamType.String,
            ),
            jumlahpohon: params.getParam(
              'jumlahpohon',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ListTransaksiWidget.routeName,
          path: ListTransaksiWidget.routePath,
          builder: (context, params) => ListTransaksiWidget(),
        ),
        FFRoute(
          name: UploadtransferrWidget.routeName,
          path: UploadtransferrWidget.routePath,
          builder: (context, params) => UploadtransferrWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: OrdersTreesWidget.routeName,
          path: OrdersTreesWidget.routePath,
          builder: (context, params) => OrdersTreesWidget(),
        ),
        FFRoute(
          name: ViewtransaksiWidget.routeName,
          path: ViewtransaksiWidget.routePath,
          builder: (context, params) => ViewtransaksiWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MycertifikatWidget.routeName,
          path: MycertifikatWidget.routePath,
          builder: (context, params) => MycertifikatWidget(),
        ),
        FFRoute(
          name: CertificateviewWidget.routeName,
          path: CertificateviewWidget.routePath,
          builder: (context, params) => CertificateviewWidget(
            nama: params.getParam(
              'nama',
              ParamType.String,
            ),
            tglexp: params.getParam(
              'tglexp',
              ParamType.String,
            ),
            jumlahpohon: params.getParam(
              'jumlahpohon',
              ParamType.int,
            ),
            tglStart: params.getParam(
              'tglStart',
              ParamType.String,
            ),
            desa: params.getParam(
              'desa',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DownloadQrCodeWidget.routeName,
          path: DownloadQrCodeWidget.routePath,
          builder: (context, params) => DownloadQrCodeWidget(),
        ),
        FFRoute(
          name: DetaildesaWidget.routeName,
          path: DetaildesaWidget.routePath,
          builder: (context, params) => DetaildesaWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
            nama: params.getParam(
              'nama',
              ParamType.String,
            ),
            profil: params.getParam(
              'profil',
              ParamType.String,
            ),
            lat: params.getParam(
              'lat',
              ParamType.String,
            ),
            long: params.getParam(
              'long',
              ParamType.String,
            ),
            foto: params.getParam(
              'foto',
              ParamType.String,
            ),
            hutandesa: params.getParam(
              'hutandesa',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: HomeMapallWidget.routeName,
          path: HomeMapallWidget.routePath,
          builder: (context, params) => HomeMapallWidget(),
        ),
        FFRoute(
          name: HomeMapCopyWidget.routeName,
          path: HomeMapCopyWidget.routePath,
          builder: (context, params) => HomeMapCopyWidget(),
        ),
        FFRoute(
          name: OrdersTreesByPengurusWidget.routeName,
          path: OrdersTreesByPengurusWidget.routePath,
          builder: (context, params) => OrdersTreesByPengurusWidget(),
        ),
        FFRoute(
          name: DownloadFormTagingWidget.routeName,
          path: DownloadFormTagingWidget.routePath,
          builder: (context, params) => DownloadFormTagingWidget(
            kodePohon: params.getParam(
              'kodePohon',
              ParamType.String,
            ),
            namaPohon: params.getParam(
              'namaPohon',
              ParamType.String,
            ),
            tinggi: params.getParam(
              'tinggi',
              ParamType.int,
            ),
            diameter: params.getParam(
              'diameter',
              ParamType.int,
            ),
            keliling: params.getParam(
              'keliling',
              ParamType.int,
            ),
            lat: params.getParam(
              'lat',
              ParamType.String,
            ),
            lng: params.getParam(
              'lng',
              ParamType.String,
            ),
            exp: params.getParam(
              'exp',
              ParamType.String,
            ),
            namapengasuh: params.getParam(
              'namapengasuh',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ListPesanWidget.routeName,
          path: ListPesanWidget.routePath,
          builder: (context, params) => ListPesanWidget(),
        ),
        FFRoute(
          name: DetailPesanWidget.routeName,
          path: DetailPesanWidget.routePath,
          builder: (context, params) => DetailPesanWidget(
            pesan: params.getParam(
              'pesan',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: UploadFotoTagingWidget.routeName,
          path: UploadFotoTagingWidget.routePath,
          builder: (context, params) => UploadFotoTagingWidget(
            idpohon: params.getParam(
              'idpohon',
              ParamType.String,
            ),
            tgladopsi: params.getParam(
              'tgladopsi',
              ParamType.String,
            ),
            idadopsi: params.getParam(
              'idadopsi',
              ParamType.int,
            ),
            idmember: params.getParam(
              'idmember',
              ParamType.int,
            ),
            namapohon: params.getParam(
              'namapohon',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: UploadImageTagingWidget.routeName,
          path: UploadImageTagingWidget.routePath,
          builder: (context, params) => UploadImageTagingWidget(
            idpohon: params.getParam(
              'idpohon',
              ParamType.String,
            ),
            idadopsi: params.getParam(
              'idadopsi',
              ParamType.int,
            ),
            namapohon: params.getParam(
              'namapohon',
              ParamType.String,
            ),
            tanggaladopsi: params.getParam(
              'tanggaladopsi',
              ParamType.String,
            ),
            idmember: params.getParam(
              'idmember',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: GetDestinationWidget.routeName,
          path: GetDestinationWidget.routePath,
          builder: (context, params) => GetDestinationWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboarding';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/splashscreen.png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
