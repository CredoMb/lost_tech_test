import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'claim_questions_widget.dart' show ClaimQuestionsWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClaimQuestionsModel extends FlutterFlowModel<ClaimQuestionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for brand widget.
  FocusNode? brandFocusNode;
  TextEditingController? brandController;
  String? Function(BuildContext, String?)? brandControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  DateTime? datePicked;
  // State field(s) for color widget.
  FocusNode? colorFocusNode;
  TextEditingController? colorController;
  String? Function(BuildContext, String?)? colorControllerValidator;
  Color? colorPicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    brandFocusNode?.dispose();
    brandController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    dateFocusNode?.dispose();
    dateController?.dispose();

    colorFocusNode?.dispose();
    colorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
