// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qr_bar_code/code/code.dart';
import 'package:qr_bar_code/qr/qr.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode(
      {Key? key,
      this.width,
      this.height,
      required this.data,
      required this.eyeStyleColor,
      required this.dataStyleColor,
      this.isSquare = true,
      this.onSaveAction})
      : super(key: key);

  final double? width;
  final double? height;
  final String data;
  final Color eyeStyleColor;
  final Color dataStyleColor;
  final bool isSquare;
  final Future Function()? onSaveAction;

  @override
  _GenerateQRCodeState createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Screenshot(
          controller: screenshotController,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(6),
            ),
            child: QRCode(
              data: widget.data,
              eyeStyle: QREyeStyle(
                  color: widget.eyeStyleColor,
                  eyeShape:
                      widget.isSquare ? QREyeShape.square : QREyeShape.circle),
              dataModuleStyle: QRDataModuleStyle(
                  color: widget.dataStyleColor,
                  dataModuleShape: widget.isSquare
                      ? QRDataModuleShape.square
                      : QRDataModuleShape.circle),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 140,
                height: 30,
                child: ElevatedButton(
                  child: Text("SAVE CODE"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: FlutterFlowTheme.of(context).primary,
                    elevation: 0,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                        ),
                  ),
                  onPressed: () async {
                    final Uint8List? image = await screenshotController.capture(
                        delay: Duration(milliseconds: 10));
                    if (image != null) {
                      // Get the current date and time
                      String formattedDate =
                          DateFormat('ddHHyyHHmm').format(DateTime.now());

                      // Append it to your filename
                      String filename = 'qrcode_$formattedDate';

                      // Save the image with the new filename
                      final result = await ImageGallerySaver.saveImage(image,
                          quality: 80, name: filename);

                      // Check if onSaveAction is not null and then invoke it
                      if (widget.onSaveAction != null) {
                        await widget.onSaveAction!();
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
