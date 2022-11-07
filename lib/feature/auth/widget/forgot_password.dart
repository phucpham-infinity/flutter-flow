import 'package:flow_project/feature/auth/provider/auth_provider.dart';
import 'package:flow_project/flutter_flow/flutter_flow_theme.dart';
import 'package:flow_project/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForgotPasswordPage extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController textController = TextEditingController();

  ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 20, 0),
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
                  'Forgot\nPassword',
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
                  'Don\'t worry! It happens. Please enter the address associated with your account.',
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
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30, 0, 30, 0),
                              child: Form(
                                key: formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    TextFormField(
                                      controller: textController,
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
                                        prefixIcon: Icon(
                                          Icons.alternate_email,
                                          color: FlutterFlowTheme.of(context)
                                              .colorBlack,
                                        ),
                                        suffixIcon:
                                            textController.text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      textController.clear();
                                                    },
                                                    child: const Icon(
                                                      Icons.clear,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30, 50, 30, 50),
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
                                        .forgotPassword(textController.text);
                                  },
                                  text: 'Submit',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
