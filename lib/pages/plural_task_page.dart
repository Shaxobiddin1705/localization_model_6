import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class PluralTask extends StatefulWidget {
  const PluralTask({Key? key}) : super(key: key);
  static const String id = "plural_task_page";

  @override
  _PluralTaskState createState() => _PluralTaskState();
}

class _PluralTaskState extends State<PluralTask> {
  TextEditingController _controller = TextEditingController(text: "0");
  int number = 0;

  @override
  Widget build(BuildContext context) {
    print(int.parse(_controller.text) );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Center(
                  child: Text(
                "cat",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ).plural(number,
                      format: NumberFormat.compact(
                          locale: context.locale.toString()))),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1)
              ),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    number = int.parse(_controller.text);
                  });
                },
                keyboardType: TextInputType.number,
                controller: _controller,
                decoration: InputDecoration(
                    labelText: "Number",
                    border: InputBorder.none
                ),
              ),
            ),
            const SizedBox(height: 350,),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          height: 40,
                          color: Colors.green,
                          onPressed: () {
                            context.locale = const Locale('en', "US");
                          },
                          child: const Text(
                            "English",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      height: 40,
                      color: Colors.red,
                      onPressed: () {
                        context.locale = const Locale('ru', "RU");
                      },
                      child: const Text(
                        "Russian",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      height: 40,
                      color: Colors.blue,
                      onPressed: () {
                        context.locale = const Locale('uz', "UZ");
                      },
                      child: const Text(
                        "Uzbek",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
