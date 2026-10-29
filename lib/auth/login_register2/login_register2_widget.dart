import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componen/success_register/success_register_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'login_register2_model.dart';
export 'login_register2_model.dart';

class LoginRegister2Widget extends StatefulWidget {
  const LoginRegister2Widget({
    super.key,
    this.tabbar,
  });

  final int? tabbar;

  static String routeName = 'loginRegister2';
  static String routePath = '/loginRegister2';

  @override
  State<LoginRegister2Widget> createState() => _LoginRegister2WidgetState();
}

class _LoginRegister2WidgetState extends State<LoginRegister2Widget>
    with TickerProviderStateMixin {
  late LoginRegister2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginRegister2Model());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: min(
          valueOrDefault<int>(
            widget.tabbar == 1 ? 0 : 1,
            0,
          ),
          1),
    )..addListener(() => safeSetState(() {}));

    _model.txtemailTextController1 ??= TextEditingController();
    _model.txtemailFocusNode1 ??= FocusNode();

    _model.txtpasswordTextController1 ??= TextEditingController();
    _model.txtpasswordFocusNode1 ??= FocusNode();

    _model.txtnameTextController ??= TextEditingController();
    _model.txtnameFocusNode ??= FocusNode();

    _model.txtemailTextController2 ??= TextEditingController();
    _model.txtemailFocusNode2 ??= FocusNode();

    _model.txthpTextController ??= TextEditingController();
    _model.txthpFocusNode ??= FocusNode();

    _model.txtpasswordTextController2 ??= TextEditingController();
    _model.txtpasswordFocusNode2 ??= FocusNode();

    _model.txtpasswordTextController3 ??= TextEditingController();
    _model.txtpasswordFocusNode3 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final theme = FlutterFlowTheme.of(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF3F7F4),
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              _buildHero(theme),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 16, 20, 16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: theme.secondaryBackground,
                      borderRadius: BorderRadius.circular(28.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30.0,
                          color: const Color(0x2610791D),
                          offset: const Offset(0.0, 12.0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: _buildTabPill(theme),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 8.0, 20.0, 12.0),
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                _buildLoginTab(theme),
                                _buildRegisterTab(theme),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                    .animate(delay: 150.ms)
                    .fadeIn(duration: 450.ms)
                    .slideY(begin: 0.08, end: 0.0, duration: 450.ms),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHero(FlutterFlowTheme theme) {
    return Container(
      width: double.infinity,
      height: 208.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional(-1.0, -1.0),
          end: AlignmentDirectional(1.0, 1.0),
          colors: [Color(0xFF10791D), Color(0xFF249689)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36.0),
          bottomRight: Radius.circular(36.0),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -30.0,
            left: -30.0,
            child: Container(
              width: 130.0,
              height: 130.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.08),
              ),
            ),
          ),
          Positioned(
            bottom: -36.0,
            right: -22.0,
            child: Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.07),
              ),
            ),
          ),
          Positioned(
            top: 26.0,
            right: 42.0,
            child: Container(
              width: 54.0,
              height: 54.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.10),
              ),
              child: Icon(
                Icons.eco_rounded,
                color: Colors.white.withValues(alpha: 0.55),
                size: 28.0,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 62.0,
                  height: 62.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 18.0,
                        color: Colors.black.withValues(alpha: 0.18),
                        offset: const Offset(0.0, 6.0),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(7.0),
                    child: ClipOval(
                      child: Image(
                        image: AssetImage(
                            'assets/images/logopohonasuh.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
                    .animate(delay: 200.ms)
                    .scaleXY(
                      begin: 0.3,
                      end: 1.0,
                      duration: 550.ms,
                      curve: Curves.easeOutBack,
                    ),
                const SizedBox(height: 14.0),
                Text(
                  'WELCOME TO',
                  style: GoogleFonts.inter(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 3.0,
                    color: Colors.white.withValues(alpha: 0.85),
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  'Pohon Asuh',
                  style: GoogleFonts.interTight(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  'Save The Tree and Donate Now',
                  style: GoogleFonts.inter(
                    fontSize: 13.0,
                    color: Colors.white.withValues(alpha: 0.85),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(duration: 450.ms)
        .slideY(begin: -0.06, end: 0.0, duration: 450.ms);
  }

  Widget _buildTabPill(FlutterFlowTheme theme) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: const Color(0xFFEFF4F0),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TabBar(
        controller: _model.tabBarController,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF249689), Color(0xFF10791D)],
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: theme.secondaryText,
        labelStyle: GoogleFonts.interTight(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.interTight(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
        dividerColor: Colors.transparent,
        tabs: const [
          Tab(text: 'Login'),
          Tab(text: 'Get Started'),
        ],
        onTap: (i) async {
          [() async {}, () async {}][i]();
        },
      ),
    );
  }

  Widget _buildLoginTab(FlutterFlowTheme theme) {
    return Form(
      key: _model.formKey1,
      autovalidateMode: AutovalidateMode.disabled,
      child: ListView(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          Text(
            'Login to your account',
            style: GoogleFonts.interTight(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: theme.primaryText,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            'Enter your email and password to continue.',
            style: GoogleFonts.inter(
              fontSize: 13.5,
              color: theme.secondaryText,
            ),
          ),
          const SizedBox(height: 24.0),
          _buildField(
            theme: theme,
            controller: _model.txtemailTextController1!,
            focusNode: _model.txtemailFocusNode1,
            label: 'Email Address',
            icon: Icons.alternate_email_rounded,
            keyboardType: TextInputType.emailAddress,
            validator: _model.txtemailTextController1Validator,
          ),
          const SizedBox(height: 16.0),
          _buildField(
            theme: theme,
            controller: _model.txtpasswordTextController1!,
            focusNode: _model.txtpasswordFocusNode1,
            label: 'Password',
            icon: Icons.lock_outline_rounded,
            obscure: !_model.txtpasswordVisibility1,
            validator: _model.txtpasswordTextController1Validator,
            suffix: IconButton(
              onPressed: () => safeSetState(
                () => _model.txtpasswordVisibility1 =
                    !_model.txtpasswordVisibility1,
              ),
              icon: Icon(
                _model.txtpasswordVisibility1
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: theme.secondaryText,
                size: 22.0,
              ),
            ),
          ),
          const SizedBox(height: 6.0),
          Align(
            alignment: const AlignmentDirectional(1.0, 0.0),
            child: GestureDetector(
              onTap: () async {
                await launchUrl(
                    Uri.parse('https://pohonasuh.io/lupa-password'));
              },
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.inter(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: theme.primary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          _primaryButton(
            label: 'Login',
            icon: const Icon(
              Icons.login_rounded,
              color: Colors.white,
              size: 20.0,
            ),
            onTap: () async {
              if (_model.formKey1.currentState == null ||
                  !_model.formKey1.currentState!.validate()) {
                return;
              }
              _model.apiResultf31 =
                  await RestAPiPohonAsuhGroup.loginuserCall.call(
                emaile: _model.txtemailTextController1.text,
                passe: _model.txtpasswordTextController1.text,
              );

              if ((_model.apiResultf31?.succeeded ?? true)) {
                if (RestAPiPohonAsuhGroup.loginuserCall.value(
                        (_model.apiResultf31?.jsonBody ?? '')) ==
                    '200') {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return SuccessRegisterWidget(
                        titleText: 'Login Berhasil!',
                        messageText:
                            'Selamat datang kembali di Pohon Asuh. Tekan tombol di bawah untuk masuk ke beranda.',
                        buttonText: 'Lanjutkan',
                      );
                    },
                  );
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signIn(
                    authenticationToken: LoginuserStruct.maybeFromMap(
                            (_model.apiResultf31?.jsonBody ?? ''))
                        ?.id
                        .toString(),
                    refreshToken: LoginuserStruct.maybeFromMap(
                            (_model.apiResultf31?.jsonBody ?? ''))
                        ?.id
                        .toString(),
                    authUid: valueOrDefault<String>(
                      currentUserData?.id.toString(),
                      'id',
                    ),
                    userData: LoginuserStruct(
                      value: currentUserData?.id.toString(),
                      email: valueOrDefault<String>(
                        LoginuserStruct.maybeFromMap(
                                (_model.apiResultf31?.jsonBody ?? ''))
                            ?.email,
                        '-',
                      ),
                      name: LoginuserStruct.maybeFromMap(
                              (_model.apiResultf31?.jsonBody ?? ''))
                          ?.name,
                      id: LoginuserStruct.maybeFromMap(
                              (_model.apiResultf31?.jsonBody ?? ''))
                          ?.id,
                      admin: LoginuserStruct.maybeFromMap(
                              (_model.apiResultf31?.jsonBody ?? ''))
                          ?.admin,
                    ),
                  );

                  context.pushNamedAuth(
                    HomePageWidget.routeName,
                    context.mounted,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.bottomToTop,
                      ),
                    },
                  );
                } else {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        content: Text(
                            RestAPiPohonAsuhGroup.loginuserCall.pesan(
                                    (_model.apiResultf31?.jsonBody ?? '')) ??
                                'Username and Password miss match'),
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
              } else {
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('Login Failed'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
              }

              safeSetState(() {});
            },
          ),
          const SizedBox(height: 28.0),
          _buildWarsiFooter(),
        ],
      ),
    );
  }

  Widget _buildRegisterTab(FlutterFlowTheme theme) {
    return Form(
      key: _model.formKey2,
      autovalidateMode: AutovalidateMode.disabled,
      child: ListView(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          Text(
            'Create your new account',
            style: GoogleFonts.interTight(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: theme.primaryText,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            'Please fill in the fields below to create your account. It\'s quick and easy.',
            style: GoogleFonts.inter(
              fontSize: 13.5,
              color: theme.secondaryText,
            ),
          ),
          const SizedBox(height: 24.0),
          _buildField(
            theme: theme,
            controller: _model.txtnameTextController!,
            focusNode: _model.txtnameFocusNode,
            label: 'Name',
            icon: Icons.person_outline_rounded,
            validator: _model.txtnameTextControllerValidator,
          ),
          const SizedBox(height: 16.0),
          _buildField(
            theme: theme,
            controller: _model.txtemailTextController2!,
            focusNode: _model.txtemailFocusNode2,
            label: 'Email Address',
            icon: Icons.alternate_email_rounded,
            keyboardType: TextInputType.emailAddress,
            validator: _model.txtemailTextController2Validator,
          ),
          const SizedBox(height: 16.0),
          _buildField(
            theme: theme,
            controller: _model.txthpTextController!,
            focusNode: _model.txthpFocusNode,
            label: 'Phone Number',
            icon: Icons.phone_iphone_rounded,
            keyboardType: TextInputType.phone,
            validator: _model.txthpTextControllerValidator,
          ),
          const SizedBox(height: 16.0),
          _buildField(
            theme: theme,
            controller: _model.txtpasswordTextController2!,
            focusNode: _model.txtpasswordFocusNode2,
            label: 'Password',
            icon: Icons.lock_outline_rounded,
            obscure: !_model.txtpasswordVisibility2,
            validator: _model.txtpasswordTextController2Validator,
            suffix: IconButton(
              onPressed: () => safeSetState(
                () => _model.txtpasswordVisibility2 =
                    !_model.txtpasswordVisibility2,
              ),
              icon: Icon(
                _model.txtpasswordVisibility2
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: theme.secondaryText,
                size: 22.0,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildField(
            theme: theme,
            controller: _model.txtpasswordTextController3!,
            focusNode: _model.txtpasswordFocusNode3,
            label: 'Confirm Password',
            icon: Icons.lock_outline_rounded,
            obscure: !_model.txtpasswordVisibility3,
            validator: _model.txtpasswordTextController3Validator,
            suffix: IconButton(
              onPressed: () => safeSetState(
                () => _model.txtpasswordVisibility3 =
                    !_model.txtpasswordVisibility3,
              ),
              icon: Icon(
                _model.txtpasswordVisibility3
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: theme.secondaryText,
                size: 22.0,
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          _primaryButton(
            label: 'Join Community',
            icon: const Icon(
              Icons.eco_rounded,
              color: Colors.white,
              size: 20.0,
            ),
            onTap: () async {
              if (_model.formKey2.currentState == null ||
                  !_model.formKey2.currentState!.validate()) {
                return;
              }
              var _shouldSetState = false;
              if (_model.txtpasswordTextController2.text ==
                  _model.txtpasswordTextController3.text) {
                _model.outputregister =
                    await RestAPiPohonAsuhGroup.registerCall.call(
                  name: _model.txtnameTextController.text,
                  emaile: _model.txtemailTextController2.text,
                  hp: _model.txthpTextController.text,
                  passe: _model.txtpasswordTextController2.text,
                );

                _shouldSetState = true;
                FFAppState().messageRegister =
                    ResponregisterStruct.maybeFromMap(
                            (_model.outputregister?.jsonBody ?? ''))!
                        .value;
                safeSetState(() {});
                if (FFAppState().messageRegister == 0) {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Information'),
                        content: Text('email has been registered'),
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
                  if (_shouldSetState) safeSetState(() {});
                  return;
                } else {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return SuccessRegisterWidget(
                        messageText:
                            'Akun berhasil dibuat. Silakan cek email Anda untuk verifikasi sebelum login.',
                      );
                    },
                  );

                  context.pushNamed(
                    LoginRegister2Widget.routeName,
                    queryParameters: {
                      'tabbar': serializeParam(
                        1,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                  );

                  if (_shouldSetState) safeSetState(() {});
                  return;
                }
              } else {
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('Information'),
                      content: Text('Password Not Match'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
                if (_shouldSetState) safeSetState(() {});
                return;
              }
            },
          ),
          const SizedBox(height: 20.0),
          RichText(
            textScaler: MediaQuery.of(context).textScaler,
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'By creating an account your agree to adopt tree ',
                  style: GoogleFonts.inter(
                    fontSize: 12.5,
                    color: theme.secondaryText,
                  ),
                ),
                TextSpan(
                  text: 'Term of use',
                  style: GoogleFonts.inter(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: theme.primary,
                  ),
                ),
                TextSpan(
                  text: ' and',
                  style: GoogleFonts.inter(
                    fontSize: 12.5,
                    color: theme.secondaryText,
                  ),
                ),
                TextSpan(
                  text: ' Pricacy police',
                  style: GoogleFonts.inter(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: theme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWarsiFooter() {
    return Column(
      children: [
        Text(
          'From',
          style: GoogleFonts.inter(
            fontSize: 12.0,
            color: FlutterFlowTheme.of(context).secondaryText,
          ),
        ),
        const SizedBox(height: 6.0),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/0694c7d6-1f23-47f5-8d1c-8f1c6a993213.png',
            width: 64.0,
            height: 64.0,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Widget _buildField({
    required FlutterFlowTheme theme,
    required TextEditingController controller,
    required FocusNode? focusNode,
    required String label,
    required IconData icon,
    bool obscure = false,
    Widget? suffix,
    String? Function(BuildContext, String?)? validator,
    TextInputType? keyboardType,
  }) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      autofocus: false,
      obscureText: obscure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: const Color(0xFFF5F8F6),
        floatingLabelStyle: GoogleFonts.inter(
          color: theme.primary,
          fontSize: 13.0,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: GoogleFonts.inter(
          color: theme.secondaryText,
          fontSize: 14.0,
        ),
        contentPadding:
            const EdgeInsetsDirectional.fromSTEB(16.0, 18.0, 16.0, 18.0),
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 9.0, 8.0, 9.0),
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(13.0),
            ),
            child: Icon(
              icon,
              color: theme.primary,
              size: 20.0,
            ),
          ),
        ),
        prefixIconConstraints:
            const BoxConstraints(minWidth: 62.0, minHeight: 44.0),
        suffixIcon: suffix,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: theme.primary, width: 1.6),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: theme.error, width: 1.2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: theme.error, width: 1.4),
        ),
      ),
      style: GoogleFonts.inter(
        fontSize: 15.0,
        color: theme.primaryText,
      ),
      cursorColor: theme.primary,
      validator: validator?.asValidator(context),
    );
  }

  Widget _primaryButton({
    required String label,
    required Widget icon,
    required VoidCallback? onTap,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(18.0),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 52.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF249689), Color(0xFF10791D)],
          ),
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 16.0,
              color: const Color(0x5910791D),
              offset: const Offset(0.0, 8.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 10.0),
            Text(
              label,
              style: GoogleFonts.interTight(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
