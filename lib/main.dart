// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:test_i18n/hello_world.dart';
import 'package:test_i18n/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_i18n/provider/locale_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child) {
        final localeProvider = Provider.of<LocaleProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.deepPurple.shade50,
            primaryColor: Colors.pinkAccent.shade100,
          ),
          title: 'Welcome to Flutter',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          locale: localeProvider.locale,
          supportedLocales: L10n.all,
          initialRoute: 'helloWorld',
          routes: {
            'helloWorld': (BuildContext context) => HelloWorldPage(),
          },
        );
      });
}

// return ChangeNotifier(
//       builder:(context, child)
//       {
        
//         return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.deepPurple.shade50,
//         primaryColor: Colors.pinkAccent.shade100,
//       ),
//       title: 'Welcome to Flutter',
//       localizationsDelegates: const [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: L10n.all,
//       initialRoute: 'helloWorld',
//       routes: {
//         'helloWorld': (BuildContext context) =>  HelloWorldPage(),
//       },
//     )});