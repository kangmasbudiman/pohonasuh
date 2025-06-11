import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upload_image_tagin_online_widget.dart'
    show UploadImageTaginOnlineWidget;
import 'package:flutter/material.dart';

class UploadImageTaginOnlineModel
    extends FlutterFlowModel<UploadImageTaginOnlineWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (tambahFototaging)] action in Button widget.
  ApiCallResponse? apiResulton6;
  bool isDataUploading_uploadDataPcn = false;
  FFUploadedFile uploadedLocalFile_uploadDataPcn =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataPcn = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
