import '/flutter_flow/flutter_flow_util.dart';
import 'realtime_updates_widget.dart' show RealtimeUpdatesWidget;
import 'package:flutter/material.dart';

class RealtimeUpdatesModel extends FlutterFlowModel<RealtimeUpdatesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
