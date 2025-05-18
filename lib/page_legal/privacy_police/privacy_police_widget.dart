import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_police_model.dart';
export 'privacy_police_model.dart';

/// ini halama untuk menampilkan privacy police
class PrivacyPoliceWidget extends StatefulWidget {
  const PrivacyPoliceWidget({super.key});

  static String routeName = 'PrivacyPolice';
  static String routePath = '/privacyPolice';

  @override
  State<PrivacyPoliceWidget> createState() => _PrivacyPoliceWidgetState();
}

class _PrivacyPoliceWidgetState extends State<PrivacyPoliceWidget>
    with TickerProviderStateMixin {
  late PrivacyPoliceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPoliceModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
            'Privacy Policy',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        tabs: [
                          Tab(
                            text: 'Indonesia',
                          ),
                          Tab(
                            text: 'English',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Kebijakan Privasi – Pohon Asuh\n\nTerakhir diperbarui: 18 Mei 2025\n\nAplikasi Pohon Asuh menghargai dan melindungi privasi pengguna. Dengan menggunakan aplikasi ini, Anda setuju terhadap pengumpulan dan penggunaan informasi sesuai dengan kebijakan ini.\n\n1. Informasi yang Kami Kumpulkan\nKami dapat mengumpulkan informasi berikut:\n\nGambar: Diunggah oleh petugas sebagai bagian dari dokumentasi pohon.\n\nLokasi (Location): Digunakan untuk melihat jarak pohon dari posisi petugas (dengan izin Anda).\n\nAkses Penyimpanan (Read/Write): Digunakan untuk menyimpan dan membaca gambar dari perangkat.\n\n2. Penggunaan Informasi\nData yang dikumpulkan digunakan untuk:\n\nMenyimpan catatan pemeliharaan pohon.\n\nMenentukan lokasi pohon berdasarkan posisi petugas.\n\nMempermudah petugas dalam menjalankan tugasnya.\n\n3. Penyimpanan dan Keamanan Data\nKami berusaha menjaga keamanan data Anda. Data disimpan di penyimpanan lokal dan server internal yang dilindungi.\n\n4. Hak Pengguna\nAnda dapat:\n\nMenolak memberikan izin akses tertentu.\n\nMenghapus aplikasi kapan saja.\n\n5. Perubahan Kebijakan\nKami dapat memperbarui kebijakan ini. Perubahan akan ditampilkan di halaman ini.\n\nJika Anda memiliki pertanyaan, hubungi kami di: djambitech@gmail.com',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Privacy Policy – Pohon Asuh\n\nLast updated: May 18, 2025\n\nThe Pohon Asuh app respects and protects your privacy. By using this application, you agree to the collection and use of information as described in this policy.\n\n1. Information We Collect\nWe may collect the following data:\n\nImages: Uploaded by field agents for tree documentation.\n\nLocation: Used to calculate distance between the tree and the field agent (with your permission).\n\nStorage Access (Read/Write): Required to save and read images from your device.\n\n2. Use of Information\nCollected data is used to:\n\nStore tree maintenance records.\n\nLocate trees based on staff location.\n\nAssist staff in completing their tasks.\n\n3. Data Storage and Security\nWe are committed to keeping your data secure. Data is stored locally and on protected internal servers.\n\n4. User Rights\nYou may:\n\nDecline certain permissions.\n\nDelete the application at any time.\n\n5. Policy Updates\nWe may update this policy. Any changes will be shown on this page.\n\nFor questions, contact us at: djambitech@gmail.com',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
