import '/flutter_flow/flutter_flow_util.dart';
import 'health_center_widget.dart' show HealthCenterWidget;
import 'package:flutter/material.dart';

class HealthCenterModel extends FlutterFlowModel<HealthCenterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
