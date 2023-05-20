import '/components/link_steam_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_link_steam_model.dart';
export 'profile_link_steam_model.dart';

class ProfileLinkSteamWidget extends StatefulWidget {
  const ProfileLinkSteamWidget({Key? key}) : super(key: key);

  @override
  _ProfileLinkSteamWidgetState createState() => _ProfileLinkSteamWidgetState();
}

class _ProfileLinkSteamWidgetState extends State<ProfileLinkSteamWidget> {
  late ProfileLinkSteamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileLinkSteamModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: wrapWithModel(
          model: _model.linkSteamModel,
          updateCallback: () => setState(() {}),
          child: LinkSteamWidget(),
        ),
      ),
    );
  }
}
