// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/custom_button.dart' as _i2;
import 'package:widgetbook_workspace/custom_textfield.dart' as _i3;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'CustomButton',
        useCase: _i1.WidgetbookUseCase(
          name: 'Default',
          builder: _i2.buildCustomButtonDefault,
          designLink: 'Link to figma design',
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'CustomTextField',
        useCase: _i1.WidgetbookUseCase(
          name: 'Default',
          builder: _i3.buildCustomTextFieldDefault,
          designLink: 'Link to figma design',
        ),
      ),
    ],
  )
];
