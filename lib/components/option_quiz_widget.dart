import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'option_quiz_model.dart';
export 'option_quiz_model.dart';

class OptionQuizWidget extends StatefulWidget {
  const OptionQuizWidget({
    super.key,
    required this.optionNum,
    required this.optionName,
    required this.isTrue,
    required this.answerId,
    required this.optionL,
  });

  final String? optionNum;
  final String? optionName;
  final bool? isTrue;
  final int? answerId;
  final String? optionL;

  @override
  State<OptionQuizWidget> createState() => _OptionQuizWidgetState();
}

class _OptionQuizWidgetState extends State<OptionQuizWidget> {
  late OptionQuizModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionQuizModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          setState(() {
            FFAppState().completedQuestion = widget.answerId!;
          });
          if (widget.isTrue == true) {
            setState(() {
              FFAppState().selectionRezult = true;
            });
          }
          setState(() {
            _model.isTaped = true;
          });
          setState(() {
            FFAppState().answearChosen = FFAppState().answearChosen + 1;
          });
          if ((widget.isTrue == true) && (FFAppState().answearChosen == 1)) {
            setState(() {
              FFAppState().score = FFAppState().score + 1;
            });
          }
        },
        child: Container(
          width: double.infinity,
          height: 80.0,
          decoration: BoxDecoration(
            color: () {
              if ((widget.isTrue == true) &&
                  (_model.isTaped == true) &&
                  (FFAppState().answearChosen == 1)) {
                return const Color(0x506BE4A4);
              } else if ((widget.isTrue == false) &&
                  (_model.isTaped == true) &&
                  (FFAppState().answearChosen == 1)) {
                return const Color(0x37E80917);
              } else {
                return const Color(0x00000000);
              }
            }(),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            border: Border.all(
              color: () {
                if ((widget.isTrue == true) &&
                    (_model.isTaped == true) &&
                    (FFAppState().answearChosen == 1)) {
                  return FlutterFlowTheme.of(context).success;
                } else if ((widget.isTrue == false) &&
                    (_model.isTaped == true) &&
                    (FFAppState().answearChosen == 1)) {
                  return FlutterFlowTheme.of(context).error;
                } else {
                  return const Color(0x00000000);
                }
              }(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: const Color(0x00FFFFFF),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.optionNum,
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.optionL != null && widget.optionL != '')
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              widget.optionL!,
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              height: MediaQuery.sizeOf(context).height * 0.1,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      if (widget.optionName != null && widget.optionName != '')
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Text(
                                widget.optionName!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                    ].divide(const SizedBox(height: 10.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
