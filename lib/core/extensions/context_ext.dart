import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension ContextExt on BuildContext {
  FToast get toast => FToast().init(this);
}