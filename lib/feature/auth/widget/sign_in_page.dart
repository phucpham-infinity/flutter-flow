import 'package:auto_route/auto_route.dart';
import 'package:flow_project/feature/auth/provider/auth_provider.dart';
import 'package:flow_project/shared/routes/app_router.gr.dart';
import 'package:flow_project/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

class SignInPage extends ConsumerWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 150),
                  Text(LocaleKeys.sign_in.tr(),
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 40)),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: LocaleKeys.email_hint.tr()),
                          controller: _emailController,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: LocaleKeys.password_hint.tr()),
                          controller: _passwordController,
                          obscureText: false,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              const SizedBox(height: 30),
                              _widgetSignInButton(context, ref),
                              const SizedBox(height: 30),
                              Text(
                                LocaleKeys.new_user.tr(),
                                textAlign: TextAlign.center,
                              ),
                              _widgetSignUpButton(context),
                            ]),
                      ],
                    ),
                  )
                ])));
  }

  Widget _widgetSignInButton(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            ref
                .read(authProvider.notifier)
                .login(_emailController.text, _passwordController.text);
          },
          child: Text(LocaleKeys.sign_in.tr()),
        ));
  }

  Widget _widgetSignUpButton(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            context.router.push(const SignUpRoute());
            //context.navigateTo(SignUpWidget)
            //const SignUpWidget().show(context);
          },
          child: Text(LocaleKeys.sign_up.tr()),
        ));
  }
}
