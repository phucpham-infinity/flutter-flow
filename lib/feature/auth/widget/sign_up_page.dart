import 'dart:developer';

import 'package:flow_project/feature/auth/provider/auth_provider.dart';
import 'package:flow_project/feature/auth/widget/routes.dart';
import 'package:flow_project/flutter_flow/flutter_flow_theme.dart';
import 'package:flow_project/flutter_flow/flutter_flow_widgets.dart';
import 'package:flow_project/shared/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'auth_alert.dart';
import 'package:auto_route/auto_route.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  TextEditingController? emailController;
  TextEditingController? passwordController;

  late bool passwordVisibility1;
  TextEditingController? passwordConfirmController;

  late bool passwordVisibility2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility1 = false;
    passwordConfirmController = TextEditingController();
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    passwordConfirmController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AuthAlert(context, ref);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                  child: InkWell(
                    onTap: () {
                      context.router.navigateBack();
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: FlutterFlowTheme.of(context).colorBlack,
                      size: 24,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: Text(
                  'Create an\naccount.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 48,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
                child: Text(
                  'Let\'s get started! Create account to start using Story Social',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        lineHeight: 1.5,
                      ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0, 1),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 0, 20, 0),
                              child: Form(
                                key: formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    TextFormField(
                                      controller: emailController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        hintText: 'Enter your email',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 0),
                                      child: TextFormField(
                                        controller: passwordController,
                                        obscureText: !passwordVisibility1,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          hintText: 'Enter your password',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => passwordVisibility1 =
                                                  !passwordVisibility1,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              passwordVisibility1
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 0),
                                      child: TextFormField(
                                        controller: passwordConfirmController,
                                        autofocus: true,
                                        obscureText: !passwordVisibility2,
                                        decoration: InputDecoration(
                                          labelText: 'Confirm Password',
                                          hintText: 'Re-enter new password',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          enabledBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => passwordVisibility2 =
                                                  !passwordVisibility2,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              passwordVisibility2
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30, 50, 30, 20),
                              child: Container(
                                width: 100,
                                height: 50,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 30,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 30),
                                    )
                                  ],
                                ),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    ref
                                        .read(authProvider.notifier)
                                        .signUp(
                                          emailController?.text,
                                          passwordController?.text,
                                          passwordConfirmController?.text,
                                        )
                                        .then(
                                      (res) {
                                        if (res) {
                                          context.router
                                              .push(const SignInRoute());
                                        }
                                      },
                                    );
                                  },
                                  text: 'Create account',
                                  options: FFButtonOptions(
                                    width: 130,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .colorWhite,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.router.push(ForgotPasswordRoute());
                              },
                              child: Text(
                                'Forgot your password?',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 2.56,
                                    ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context.router.push(ForgotPasswordRoute());
                              },
                              child: Text(
                                'Reset password',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      lineHeight: 2,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
