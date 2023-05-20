import '/components/link_steam_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileLinkSteamModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for linkSteam component.
  late LinkSteamModel linkSteamModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    linkSteamModel = createModel(context, () => LinkSteamModel());
  }

  void dispose() {
    linkSteamModel.dispose();
  }

  /// Additional helper methods are added here.

}
