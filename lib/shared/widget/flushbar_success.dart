import 'package:another_flushbar/flushbar.dart';
import 'package:flow_project/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

FlushbarSuccess(BuildContext context, String message) => Flushbar(
      title: "Success!",
      icon: const Icon(
        Icons.error_outline,
        size: 28.0,
        color: Colors.black,
      ),
      titleText: Text(
        'Success!',
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 12,
              lineHeight: 1,
            ),
      ),
      messageText: Text(
        message,
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 13,
              lineHeight: 1,
            ),
      ),
      backgroundGradient: const LinearGradient(
        colors: [Color(0xFF77EED8), Color(0xFF9EABE4)],
        stops: [0, 1],
        begin: AlignmentDirectional(0.98, -1),
        end: AlignmentDirectional(-0.98, 1),
      ),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    )..show(context);
