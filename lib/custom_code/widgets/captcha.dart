// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_number_captcha/flutter_number_captcha.dart';

import 'package:flutter_number_captcha/number_captcha.dart';

class Captcha extends StatefulWidget {
  const Captcha({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Captcha> createState() => _CaptchaState();
}

class _CaptchaState extends State<Captcha> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showCaptchaOnLoad();
    });
  }

  void _showCaptchaOnLoad() async {
    final bool test = await FlutterNumberCaptcha.show(
      context,
      titleText: 'Enter correct number',
      placeholderText: 'Enter Number',
      checkCaption: 'Check',
      accentColor: Colors.blue,
      invalidText: 'Invalid code',
    );
    if (test) {
      Navigator.pop(context, true);
    } else {
      Navigator.pop(context, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // You can return an empty container since the captcha shows automatically
  }
}
