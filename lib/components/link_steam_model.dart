import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LinkSteamModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for steamIdNumber widget.
  TextEditingController? steamIdNumberController;
  String? Function(BuildContext, String?)? steamIdNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    steamIdNumberController?.dispose();
  }

  /// Additional helper methods are added here.

}
