import '/flutter_flow/flutter_flow_util.dart';
import 'disease_info_widget.dart' show DiseaseInfoWidget;
import 'package:flutter/material.dart';

class DiseaseInfoModel extends FlutterFlowModel<DiseaseInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
