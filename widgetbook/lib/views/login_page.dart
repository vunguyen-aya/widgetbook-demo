import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_demo/pages/login_page.dart';

@UseCase(
  name: 'Login Page',
  type: LoginPage,
)
Widget buildDefaultLoginUseCase(BuildContext context) {
  return const LoginPage();
}
