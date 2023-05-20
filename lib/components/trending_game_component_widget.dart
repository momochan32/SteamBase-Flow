import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trending_game_component_model.dart';
export 'trending_game_component_model.dart';

class TrendingGameComponentWidget extends StatefulWidget {
  const TrendingGameComponentWidget({
    Key? key,
    required this.dataApi,
  }) : super(key: key);

  final String? dataApi;

  @override
  _TrendingGameComponentWidgetState createState() =>
      _TrendingGameComponentWidgetState();
}

class _TrendingGameComponentWidgetState
    extends State<TrendingGameComponentWidget> with TickerProviderStateMixin {
  late TrendingGameComponentModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 220.ms,
          duration: 310.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 220.ms,
          duration: 310.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrendingGameComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetGameInfoFromAppIdCall.call(
        appId: widget.dataApi,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final containerGetGameInfoFromAppIdResponse = snapshot.data!;
        return Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: 250.0,
            height: 280.0,
            decoration: BoxDecoration(
              color: Color(0xFF8A0404),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                  valueOrDefault<String>(
                    GetGameInfoFromAppIdCall.bgImage(
                      containerGetGameInfoFromAppIdResponse.jsonBody,
                    ),
                    'https://1000logos.net/wp-content/uploads/2020/08/Logo-Steam.jpg',
                  ),
                ),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0xFF8A0404),
                  offset: Offset(0.0, 2.0),
                )
              ],
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Color(0xFF8A0404),
                width: 2.0,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Container(
                      width: double.infinity,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Color(0x34000000),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10.0,
                            sigmaY: 10.0,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        GetGameInfoFromAppIdCall.title(
                                          containerGetGameInfoFromAppIdResponse
                                              .jsonBody,
                                        ).toString(),
                                        'No-Title Found',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      if (GetGameInfoFromAppIdCall.isWindows(
                                            containerGetGameInfoFromAppIdResponse
                                                .jsonBody,
                                          ) ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.windows,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      if (GetGameInfoFromAppIdCall.isMac(
                                            containerGetGameInfoFromAppIdResponse
                                                .jsonBody,
                                          ) ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.apple,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      if (GetGameInfoFromAppIdCall.isLinux(
                                            containerGetGameInfoFromAppIdResponse
                                                .jsonBody,
                                          ) ==
                                          true)
                                        FaIcon(
                                          FontAwesomeIcons.linux,
                                          color: Colors.white,
                                          size: 18.0,
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
      },
    );
  }
}
