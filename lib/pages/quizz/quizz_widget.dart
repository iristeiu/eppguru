import '/backend/backend.dart';
import '/components/option_quiz_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'quizz_model.dart';
export 'quizz_model.dart';

class QuizzWidget extends StatefulWidget {
  const QuizzWidget({
    super.key,
    this.subcapitolId,
  });

  final DocumentReference? subcapitolId;

  @override
  State<QuizzWidget> createState() => _QuizzWidgetState();
}

class _QuizzWidgetState extends State<QuizzWidget> {
  late QuizzModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizzModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF28587B),
        appBar: AppBar(
          backgroundColor: const Color(0xFF28587B),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('Capitole');
            },
          ),
          title: Text(
            'QUIZ',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: StreamBuilder<List<Quiz1PrGeRecord>>(
          stream: queryQuiz1PrGeRecord(
            queryBuilder: (quiz1PrGeRecord) => quiz1PrGeRecord
                .where(
                  'subcapitol_id',
                  isEqualTo: widget.subcapitolId,
                )
                .where(
                  'id',
                  isEqualTo: FFAppState().currentQuestion,
                ),
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
            List<Quiz1PrGeRecord> columnQuiz1PrGeRecordList = snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final columnQuiz1PrGeRecord = columnQuiz1PrGeRecordList.isNotEmpty
                ? columnQuiz1PrGeRecordList.first
                : null;
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: LinearPercentIndicator(
                          percent: valueOrDefault<int>(
                                FFAppState().currentQuestion,
                                0,
                              ) /
                              4,
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          lineHeight: 19.0,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: FlutterFlowTheme.of(context).secondary,
                          backgroundColor: const Color(0x26FFFFFF),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 0.0),
                              child: Text(
                                columnQuiz1PrGeRecord!.intrebare,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w100,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 24.0, 20.0, 0.0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  wrapWithModel(
                                    model: _model.optionQuizModel1,
                                    updateCallback: () => setState(() {}),
                                    child: OptionQuizWidget(
                                      optionNum: 'A',
                                      optionName:
                                          columnQuiz1PrGeRecord.optiune1,
                                      isTrue: columnQuiz1PrGeRecord.res1,
                                      answerId: 1,
                                      optionL: columnQuiz1PrGeRecord.optiune1L,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.optionQuizModel2,
                                    updateCallback: () => setState(() {}),
                                    child: OptionQuizWidget(
                                      optionNum: 'B',
                                      optionName:
                                          columnQuiz1PrGeRecord.optiune2,
                                      isTrue: columnQuiz1PrGeRecord.res2,
                                      answerId: 2,
                                      optionL: columnQuiz1PrGeRecord.optiune2L,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.optionQuizModel3,
                                    updateCallback: () => setState(() {}),
                                    child: OptionQuizWidget(
                                      optionNum: 'C',
                                      optionName:
                                          columnQuiz1PrGeRecord.optiune3,
                                      isTrue: columnQuiz1PrGeRecord.res3,
                                      answerId: 3,
                                      optionL: columnQuiz1PrGeRecord.optiune3L,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.optionQuizModel4,
                                    updateCallback: () => setState(() {}),
                                    child: OptionQuizWidget(
                                      optionNum: 'D',
                                      optionName:
                                          columnQuiz1PrGeRecord.optiune4,
                                      isTrue: columnQuiz1PrGeRecord.res4,
                                      answerId: 4,
                                      optionL: columnQuiz1PrGeRecord.optiune4L,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 10.0, 10.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            icon: Icon(
                                              Icons.arrow_forward,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              setState(() {
                                                FFAppState().currentQuestion =
                                                    FFAppState()
                                                            .currentQuestion +
                                                        1;
                                              });
                                              setState(() {
                                                FFAppState().answearChosen = 0;
                                                FFAppState().correctAnswears =
                                                    0;
                                                FFAppState().selectionRezult =
                                                    false;
                                              });
                                              if (FFAppState().currentQuestion <
                                                  4) {
                                                if (Navigator.of(context)
                                                    .canPop()) {
                                                  context.pop();
                                                }
                                                context.pushNamed(
                                                  'Quizz',
                                                  queryParameters: {
                                                    'subcapitolId':
                                                        serializeParam(
                                                      columnQuiz1PrGeRecord
                                                          .subcapitolId,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                context.pushNamed('ScorePage');
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
