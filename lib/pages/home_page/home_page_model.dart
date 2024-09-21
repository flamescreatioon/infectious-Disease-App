import '/components/outbreaklist_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Outbreaklist component.
  late OutbreaklistModel outbreaklistModel;

  @override
  void initState(BuildContext context) {
    outbreaklistModel = createModel(context, () => OutbreaklistModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    outbreaklistModel.dispose();
  }
}
