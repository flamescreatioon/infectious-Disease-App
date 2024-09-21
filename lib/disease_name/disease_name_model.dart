import '/flutter_flow/flutter_flow_util.dart';
import 'disease_name_widget.dart' show DiseaseNameWidget;
import 'package:flutter/material.dart';

class DiseaseNameModel extends FlutterFlowModel<DiseaseNameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
