import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_register2_widget.dart' show LoginRegister2Widget;
import 'package:flutter/material.dart';

class LoginRegister2Model extends FlutterFlowModel<LoginRegister2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtemail widget.
  FocusNode? txtemailFocusNode1;
  TextEditingController? txtemailTextController1;
  String? Function(BuildContext, String?)? txtemailTextController1Validator;
  String? _txtemailTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email  is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for txtpassword widget.
  FocusNode? txtpasswordFocusNode1;
  TextEditingController? txtpasswordTextController1;
  late bool txtpasswordVisibility1;
  String? Function(BuildContext, String?)? txtpasswordTextController1Validator;
  String? _txtpasswordTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (loginuser)] action in Button widget.
  ApiCallResponse? apiResultf31;
  // State field(s) for txtname widget.
  FocusNode? txtnameFocusNode;
  TextEditingController? txtnameTextController;
  String? Function(BuildContext, String?)? txtnameTextControllerValidator;
  String? _txtnameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  // State field(s) for txtemail widget.
  FocusNode? txtemailFocusNode2;
  TextEditingController? txtemailTextController2;
  String? Function(BuildContext, String?)? txtemailTextController2Validator;
  String? _txtemailTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email  is required';
    }

    return null;
  }

  // State field(s) for txthp widget.
  FocusNode? txthpFocusNode;
  TextEditingController? txthpTextController;
  String? Function(BuildContext, String?)? txthpTextControllerValidator;
  String? _txthpTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Hp is required';
    }

    return null;
  }

  // State field(s) for txtpassword widget.
  FocusNode? txtpasswordFocusNode2;
  TextEditingController? txtpasswordTextController2;
  late bool txtpasswordVisibility2;
  String? Function(BuildContext, String?)? txtpasswordTextController2Validator;
  String? _txtpasswordTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for txtpassword widget.
  FocusNode? txtpasswordFocusNode3;
  TextEditingController? txtpasswordTextController3;
  late bool txtpasswordVisibility3;
  String? Function(BuildContext, String?)? txtpasswordTextController3Validator;
  String? _txtpasswordTextController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Current Password is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (register)] action in Button widget.
  ApiCallResponse? outputregister;

  @override
  void initState(BuildContext context) {
    txtemailTextController1Validator = _txtemailTextController1Validator;
    txtpasswordVisibility1 = false;
    txtpasswordTextController1Validator = _txtpasswordTextController1Validator;
    txtnameTextControllerValidator = _txtnameTextControllerValidator;
    txtemailTextController2Validator = _txtemailTextController2Validator;
    txthpTextControllerValidator = _txthpTextControllerValidator;
    txtpasswordVisibility2 = false;
    txtpasswordTextController2Validator = _txtpasswordTextController2Validator;
    txtpasswordVisibility3 = false;
    txtpasswordTextController3Validator = _txtpasswordTextController3Validator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    txtemailFocusNode1?.dispose();
    txtemailTextController1?.dispose();

    txtpasswordFocusNode1?.dispose();
    txtpasswordTextController1?.dispose();

    txtnameFocusNode?.dispose();
    txtnameTextController?.dispose();

    txtemailFocusNode2?.dispose();
    txtemailTextController2?.dispose();

    txthpFocusNode?.dispose();
    txthpTextController?.dispose();

    txtpasswordFocusNode2?.dispose();
    txtpasswordTextController2?.dispose();

    txtpasswordFocusNode3?.dispose();
    txtpasswordTextController3?.dispose();
  }
}
