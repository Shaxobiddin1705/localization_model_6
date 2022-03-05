import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_model_6/pages/home_page.dart';
import 'package:localization_model_6/pages/plural_task_page.dart';
import 'package:localization_model_6/pages/task_1_page.dart';
import 'package:localization_model_6/pages/task_2_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales:  [Locale("en", "US"), Locale("ru", "RU"), Locale
        ("uz", "UZ"), Locale("fr", "FR"), Locale("kr", "KR"), Locale("jp", "JP"
          "")],
      path: "assets/translations",
      // startLocale: Locale("en", "US"),
      fallbackLocale:  Locale("en", "US"),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        Task1Page.id: (context) => const Task1Page(),
        Task2Page.id: (context) => const Task2Page(),
        PluralTask.id: (context) =>  PluralTask(),
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}