import 'dart:io';
import 'package:flutter/material.dart';
import 'package:resume_app/Model_Classs.dart';

class Third_Screen extends StatefulWidget {
  const Third_Screen({Key? key}) : super(key: key);

  @override
  State<Third_Screen> createState() => _Third_ScreenState();
}

class _Third_ScreenState extends State<Third_Screen> {
  @override
  Widget build(BuildContext context) {
    model m1 = ModalRoute.of(context)!.settings.arguments as model;
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width/2.3,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "${m1.name}",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${m1.surname}",
                        style: TextStyle(fontSize: 15, color: Colors.redAccent),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 150,
                          width: 200,
                          child: ClipRRect(
                            child: Image.file(File(m1.image)),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Contact",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )),
                      Divider(
                        color: Colors.black,
                        thickness: 3,
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.double,
                              decorationThickness: 3),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${m1.address}",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Phone",
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.double,
                              decorationThickness: 3),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${m1.mobile}",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "E-mail",
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.double,
                              decorationThickness: 3),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${m1.mail}",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Hobby",
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.double,
                              decorationThickness: 3),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${m1.hobby}",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "detail",
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.double,
                              decorationThickness: 3),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${m1.detail}",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Language",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )),
                      Divider(
                        color: Colors.black,
                        thickness: 3,
                        height: 15,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${m1.language}",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${m1.language1}",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${m1.language2}",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hobby",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )),
                      Divider(
                        color: Colors.black,
                        thickness: 3,
                        height: 15,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${m1.hobby}",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${m1.hobby1}",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${m1.hobby2}",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Projects",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )),
                SizedBox(
                  height: 5,
                ),
                Container(height: 5,width:double.infinity,color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${m1.pr}",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${m1.pr1}",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${m1.pr2}",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
