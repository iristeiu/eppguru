import '/flutter_flow/flutter_flow_util.dart';
import 'progress_map_widget.dart' show ProgressMapWidget;
import 'package:flutter/material.dart';

class ProgressMapModel extends FlutterFlowModel<ProgressMapWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
  }
}
