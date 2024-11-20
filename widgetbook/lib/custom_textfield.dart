import 'package:flutter/material.dart';

import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_demo/widgets/custom_button.dart';
import 'package:widgetbook_demo/widgets/custom_textfield.dart';

@widgetbook.UseCase(name: 'Default', type: CustomTextField, designLink: 'Link to figma design')
Widget buildCustomTextFieldDefault(BuildContext context) {
  return const SafeArea(
    child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: CustomTextField(
          hintText: 'Hello world',
        ),
      ),
    ),
  );
}
