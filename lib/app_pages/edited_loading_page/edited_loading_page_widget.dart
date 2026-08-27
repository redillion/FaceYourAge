import '/backend/api_requests/api_calls.dart';
import '/components/image_error_notice/image_error_notice_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'edited_loading_page_model.dart';
export 'edited_loading_page_model.dart';

/// Genera
class EditedLoadingPageWidget extends StatefulWidget {
  const EditedLoadingPageWidget({
    super.key,
    required this.afterImage,
  });

  final String? afterImage;

  static String routeName = 'EditedLoadingPage';
  static String routePath = '/editedLoadingPage';

  @override
  State<EditedLoadingPageWidget> createState() =>
      _EditedLoadingPageWidgetState();
}

class _EditedLoadingPageWidgetState extends State<EditedLoadingPageWidget> {
  late EditedLoadingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditedLoadingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult = await EditResultCall.call(
        filename: widget!.afterImage,
      );

      if ((_model.apiResult?.succeeded ?? true)) {
        _model.editResults = (_model.apiResult?.jsonBody ?? '');
        safeSetState(() {});

        context.pushNamed(
          VersionsPageWidget.routeName,
          queryParameters: {
            'afterImage': serializeParam(
              _model.editResults,
              ParamType.JSON,
            ),
            'serverFilename': serializeParam(
              getJsonField(
                (_model.apiResult?.jsonBody ?? ''),
                r'''$.filename''',
              ).toString(),
              ParamType.String,
            ),
          }.withoutNulls,
        );
      } else {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: ImageErrorNoticeWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));

        context.safePop();
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/loadingrhombus.gif',
                        width: 70.0,
                        height: 70.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 32.0),
                    child: GradientText(
                      FFLocalizations.of(context).getText(
                        '2jhk2wvu' /* Please wait while we generate ... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                      colors: [
                        Color(0xFFB8BEC3),
                        FlutterFlowTheme.of(context).secondary
                      ],
                      gradientDirection: GradientDirection.ltr,
                      gradientType: GradientType.linear,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
