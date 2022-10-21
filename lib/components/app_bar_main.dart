import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMain(
      {super.key, required this.appBar, required this.title, this.actions});

  final AppBar appBar;
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () async {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.chevron_left_rounded,
          color: FlutterFlowTheme.of(context).grayIcon,
          size: 32,
        ),
      ),
      title: Text(
        title,
        style: FlutterFlowTheme.of(context).title3,
      ),
      actions: actions,
      centerTitle: false,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
