import 'package:flow_project/flutter_flow/flutter_flow_theme.dart';
import 'package:flow_project/flutter_flow/flutter_flow_widgets.dart';
import 'package:flow_project/gen/assets.gen.dart';
import 'package:flow_project/shared/model/onboard/onboard.dart';
import 'package:flow_project/shared/repository/onboard_repository.dart';
import 'package:flow_project/shared/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardWidget extends ConsumerStatefulWidget {
  const OnboardWidget({Key? key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends ConsumerState<OnboardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late final OnboardRepository _onboardRepository =
      ref.read(onboardRepositoryProvider);

  void checkOnboard() async {
    const _onboard = Onboard(is_onboard: 0, steps: 0, current_step: 0);
    await _onboardRepository.saveOnboard(_onboard);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.onboard.image(
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
                child: Text(
                  'The story\nbegins here.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: Text(
                  'Unlimited stories in yours hand. Immerse yourself into amazing worlds and start your journey today.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        lineHeight: 1.5,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 60, 30, 0),
                child: Container(
                  width: 100,
                  height: 60,
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
                      checkOnboard();
                      context.router.push(SignInRoute());
                    },
                    text: 'Immerse yourself now',
                    options: FFButtonOptions(
                      width: 130,
                      height: 60,
                      color: FlutterFlowTheme.of(context).primaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          checkOnboard();
                          context.router.push(const SignUpRoute());
                        },
                        child: Text(
                          'Do you have an account?',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Montserrat',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                lineHeight: 2.5,
                              ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        checkOnboard();
                        context.router.push(SignInRoute());
                      },
                      child: Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              lineHeight: 2,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
