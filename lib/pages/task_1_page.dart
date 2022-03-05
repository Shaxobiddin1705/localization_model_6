import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class Task1Page extends StatefulWidget {
  const Task1Page({Key? key}) : super(key: key);
  static const String id = "task_1_page";

  @override
  _Task1PageState createState() => _Task1PageState();
}

class _Task1PageState extends State<Task1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              child: Center(
                child: Text("welcome".tr(), style: const TextStyle(fontSize: 20,
                    color: Colors.blue, fontWeight: FontWeight.bold),),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 40,
                          color: Colors.green,
                          onPressed: (){
                            context.locale = const Locale('en', "US");
                          },
                          child: const Text("English", style: TextStyle(color:
                          Colors.white),),
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 40,
                          color: Colors.red,
                          onPressed: (){
                            context.locale = const Locale('ru', "RU");
                          },
                          child: const Text("Russian", style: TextStyle(color:
                          Colors.white),),
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 40,
                          color: Colors.blue,
                          onPressed: (){
                            context.locale = const Locale('uz', "UZ");
                          },
                          child: const Text("Uzbek", style: TextStyle(color:
                          Colors.white),),
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          height: 40,
                          color: Colors.amber,
                          onPressed: (){
                            context.locale = const Locale('fr', "FR");
                          },
                          child: const Text("French", style: TextStyle(color:
                          Colors.white),),
                        ),
                      )
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
