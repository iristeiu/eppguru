import '/flutter_flow/flutter_flow_util.dart';
import 'learn_page_widget.dart' show LearnPageWidget;
import 'package:flutter/material.dart';

class LearnPageModel extends FlutterFlowModel<LearnPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
