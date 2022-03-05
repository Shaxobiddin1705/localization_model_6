import 'dart:async';

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:localization_model_6/pages/plural_task_page.dart';
import 'package:localization_model_6/pages/task_1_page.dart';
import 'package:localization_model_6/pages/task_2_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: loading ? isLoading() : Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, Task1Page.id);
                },
              child: const Text("Task1Page", style: TextStyle(color: Colors
                  .white)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              height: 45,
              minWidth: 250,
              color: Colors.amber,
            ),
            const SizedBox(height: 20,),
            MaterialButton(
              onPressed: (){
                Navigator.pushNamed(context, Task2Page.id);
              },
              child: const Text("Task2Page", style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              height: 45,
              minWidth: 250,
              color: Colors.teal,
            ),
            const SizedBox(height: 20,),
            MaterialButton(
              onPressed: (){
                  Navigator.pushNamed(context, PluralTask.id);
              },
              child: const Text("PluralTaskPage", style: TextStyle(color: Colors
                  .white),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              height: 45,
              minWidth: 250,
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }

  Widget isLoading() {
    return SpinKitFadingCircle(
      duration: Duration(seconds: 3),
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.red : Colors.green,
              shape: BoxShape.circle
            )
        );
      },
    );
}

}
