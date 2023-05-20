import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? combinetextApi(List<String>? listText) {
  // combine listText using |
  if (listText == null) return 'no Genre';
  String? text = '';
  for (int i = 0; i < listText.length; i++) {
    if (i == 0) {
      text = listText[i];
    } else {
      text = text! + ' | ' + listText[i];
    }
  }
  return text;
}
