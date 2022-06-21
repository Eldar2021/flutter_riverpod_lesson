import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod_lesson/home/view/home_page.dart';
import 'package:flutter_riverpod_lesson/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(
          primary: Colors.blue,
          onPrimary: Colors.red,
          seedColor: Colors.green,
          brightness: Brightness.dark,
          background: Colors.blueGrey,
          surface: Colors.brown,
          onSurface: Colors.amber,
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
