import 'package:another_flushbar/flushbar.dart';
import 'package:flow_project/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

FlushbarError(BuildContext context, String message) => Flushbar(
      title: "Error!",
      icon: const Icon(
        Icons.error_outline,
        size: 28.0,
        color: Colors.white,
      ),
      message: message,
      titleText: Text(
        'Error!',
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 13,
              lineHeight: 1,
            ),
      ),
      backgroundGradient: const LinearGradient(
        colors: [Color(0xFFFF8A00), Color(0xFFE52E71)],
        stops: [0, 1],
        begin: AlignmentDirectional(0.98, -1),
        end: AlignmentDirectional(-0.98, 1),
      ),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    )..show(context);
