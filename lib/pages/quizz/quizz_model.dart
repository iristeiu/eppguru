import '/components/option_quiz_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'quizz_widget.dart' show QuizzWidget;
import 'package:flutter/material.dart';

class QuizzModel extends FlutterFlowModel<QuizzWidget> {
  ///  Local state fields for this page.

  int? currentlySerlectedAnswer;

  bool? currentlySelectionRezult;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for OptionQuiz component.
  late OptionQuizModel optionQuizModel1;
  // Model for OptionQuiz component.
  late OptionQuizModel optionQuizModel2;
  // Model for OptionQuiz component.
  late OptionQuizModel optionQuizModel3;
  // Model for OptionQuiz component.
  late OptionQuizModel optionQuizModel4;

  @override
  void initState(BuildContext context) {
    optionQuizModel1 = createModel(context, () => OptionQuizModel());
    optionQuizModel2 = createModel(context, () => OptionQuizModel());
    optionQuizModel3 = createModel(context, () => OptionQuizModel());
    optionQuizModel4 = createModel(context, () => OptionQuizModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    optionQuizModel1.dispose();
    optionQuizModel2.dispose();
    optionQuizModel3.dispose();
    optionQuizModel4.dispose();
  }
}
