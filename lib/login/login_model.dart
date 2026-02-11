import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for SignEmail widget.
  FocusNode? signEmailFocusNode;
  TextEditingController? signEmailTextController;
  String? Function(BuildContext, String?)? signEmailTextControllerValidator;
  String? _signEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SignPassword widget.
  FocusNode? signPasswordFocusNode;
  TextEditingController? signPasswordTextController;
  late bool signPasswordVisibility;
  String? Function(BuildContext, String?)? signPasswordTextControllerValidator;
  String? _signPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SignConfirmPassword widget.
  FocusNode? signConfirmPasswordFocusNode;
  TextEditingController? signConfirmPasswordTextController;
  late bool signConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      signConfirmPasswordTextControllerValidator;
  String? _signConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for loginEmail widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  // State field(s) for loginPassword widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signEmailTextControllerValidator = _signEmailTextControllerValidator;
    signPasswordVisibility = false;
    signPasswordTextControllerValidator = _signPasswordTextControllerValidator;
    signConfirmPasswordVisibility = false;
    signConfirmPasswordTextControllerValidator =
        _signConfirmPasswordTextControllerValidator;
    loginPasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signEmailFocusNode?.dispose();
    signEmailTextController?.dispose();

    signPasswordFocusNode?.dispose();
    signPasswordTextController?.dispose();

    signConfirmPasswordFocusNode?.dispose();
    signConfirmPasswordTextController?.dispose();

    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();
  }
}
