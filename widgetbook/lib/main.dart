import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // The [directories] variable does not exist yet,
      // it will be generated in the next step
      lightTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      directories: directories,
      addons: [
        TextScaleAddon(
          scales: [1.0, 1.2, 1.4, 1.6, 1.8, 2.0],
        ),
        LocalizationAddon(
          locales: [
            const Locale('en', 'US'),
          ],
          localizationsDelegates: [
            DefaultWidgetsLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
          ],
        ),
        DeviceFrameAddon(
          initialDevice: Devices.ios.iPhone13,
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
            Devices.android.onePlus8Pro,
            Devices.android.bigPhone,
            Devices.android.smallPhone,
            Devices.ios.iPad,
          ],
        ),
        GridAddon(),
      ],
      appBuilder: (context, child) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          useInheritedMediaQuery: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SafeArea(
                child: child ?? Container(),
              ),
            );
          },
          child: SafeArea(
            child: Scaffold(
              body: child,
            ),
          ),
        );
      },
    );
  }
}
