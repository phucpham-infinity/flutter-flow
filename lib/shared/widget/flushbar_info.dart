import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

FlushbarInfo(BuildContext context, String message) => Flushbar(
      title: "Info!",
      icon: const Icon(
        Icons.info_outline,
        size: 28.0,
        color: Colors.white,
      ),
      message: message,
      backgroundColor: Colors.blueAccent,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    )..show(context);
