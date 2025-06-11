import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upload_image_taging_widget.dart' show UploadImageTagingWidget;
import 'package:flutter/material.dart';

class UploadImageTagingModel extends FlutterFlowModel<UploadImageTagingWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - uploadBase64ToSupabase] action in Button widget.
  String? url;
  // Stores action output result for [Backend Call - API (tambahFototaging)] action in Button widget.
  ApiCallResponse? apiResult3s2;
  bool isDataUploading_uploadDataJ75 = false;
  FFUploadedFile uploadedLocalFile_uploadDataJ75 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
