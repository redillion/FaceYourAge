import '/backend/api_requests/api_calls.dart';
import '/components/image_error_notice/image_error_notice_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'edited_loading_page_widget.dart' show EditedLoadingPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EditedLoadingPageModel extends FlutterFlowModel<EditedLoadingPageWidget> {
  ///  Local state fields for this page.

  dynamic editResults;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (EditResult)] action in EditedLoadingPage widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
