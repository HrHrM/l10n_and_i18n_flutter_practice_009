import 'package:flutter/material.dart';
import 'package:test_i18n/main.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_i18n/widgets/LanguageWidget.dart';

class HelloWorldPage extends StatelessWidget {
  const HelloWorldPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(AppLocalizations.of(context)!.language);
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appBarHelloWorld),
        backgroundColor: Colors.pink.shade100,
        actions: const [
          LanguagePickerWidget(),
          SizedBox(width: 12),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LanguageWidget(),
            SizedBox(height: 32),
            Text(
              AppLocalizations.of(context)!.language,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.helloWorld,
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.hello('Kaede'),
              style: TextStyle(fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
