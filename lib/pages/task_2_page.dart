import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class Task2Page extends StatefulWidget {
  const Task2Page({Key? key}) : super(key: key);
  static const String id = "task_2_page";

  @override
  _Task2PageState createState() => _Task2PageState();
}

class _Task2PageState extends State<Task2Page> {
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
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height * 0.85,
              child: Center(
                child: Text("flutter".tr(), style: const TextStyle(fontSize: 20,
                    color: Colors.blue, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
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
                            context.locale = const Locale('kr', "KR");
                          },
                          child: const Text("Korean", style: TextStyle(color:
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
                            context.locale = const Locale('jp', "JP");
                          },
                          child: const Text("Japanese", style: TextStyle(color:
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
