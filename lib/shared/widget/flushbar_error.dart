import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

FlushbarError(BuildContext context, String message) => Flushbar(
      title: "Error!",
      icon: const Icon(
        Icons.error_outline,
        size: 28.0,
        color: Colors.white,
      ),
      message: message,
      backgroundColor: Colors.redAccent,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    )..show(context);
