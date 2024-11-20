import 'package:flutter/material.dart';

import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_demo/widgets/custom_button.dart';

@widgetbook.UseCase(name: 'Default', type: CustomButton, designLink: 'Link to figma design')
Widget buildCustomButtonDefault(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: CustomButton(
          text: 'Hello world',
          onPressed: () {},
        ),
      ),
    ),
  );
}
