import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ErrorToast extends StatelessWidget {
  final String errorText;

  const ErrorToast({Key? key, required this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.redAccent,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(errorText),
      ),
    );
  }
}
