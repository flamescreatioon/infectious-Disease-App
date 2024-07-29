import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'outbreaklist_model.dart';
export 'outbreaklist_model.dart';

class OutbreaklistWidget extends StatefulWidget {
  const OutbreaklistWidget({super.key});

  @override
  State<OutbreaklistWidget> createState() => _OutbreaklistWidgetState();
}

class _OutbreaklistWidgetState extends State<OutbreaklistWidget> {
  late OutbreaklistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OutbreaklistModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(1.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 30.0,
            height: 30.0,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              'https://picsum.photos/seed/502/600',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StreamBuilder<List<RealTimeUpdatesRecord>>(
                  stream: queryRealTimeUpdatesRecord(
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<RealTimeUpdatesRecord>
                        richTextRealTimeUpdatesRecordList = snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final richTextRealTimeUpdatesRecord =
                        richTextRealTimeUpdatesRecordList.isNotEmpty
                            ? richTextRealTimeUpdatesRecordList.first
                            : null;

                    return RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: valueOrDefault<String>(
                              richTextRealTimeUpdatesRecord?.location,
                              'Abia',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const TextSpan(
                            text: '- ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: valueOrDefault<String>(
                              richTextRealTimeUpdatesRecord?.disease,
                              'Cholera',
                            ),
                            style: const TextStyle(),
                          ),
                          const TextSpan(
                            text: '-',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: valueOrDefault<String>(
                              formatNumber(
                                richTextRealTimeUpdatesRecord?.numCases,
                                formatType: FormatType.compact,
                              ),
                              '10',
                            ),
                            style: const TextStyle(),
                          ),
                          const TextSpan(
                            text: ' Case ',
                            style: TextStyle(),
                          )
                        ],
                        style: const TextStyle(),
                      ),
                    );
                  },
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Updated ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      TextSpan(
                        text: valueOrDefault<String>(
                          dateTimeFormat('relative', getCurrentTimestamp),
                          'a moment ago',
                        ),
                        style: const TextStyle(),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: AlignmentDirectional(1.0, 0.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 12.0,
            ),
          ),
        ].divide(const SizedBox(width: 15.0)).addToStart(const SizedBox(width: 10.0)),
      ),
    );
  }
}
