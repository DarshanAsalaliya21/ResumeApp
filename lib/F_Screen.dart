import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/PDF_Screen.dart';
import 'dart:io';
import 'package:resume_app/Model_Classs.dart';

class F_Screen extends StatefulWidget {
  const F_Screen({Key? key}) : super(key: key);

  @override
  State<F_Screen> createState() => _F_ScreenState();
}

class _F_ScreenState extends State<F_Screen> {
  TextEditingController txt_name = TextEditingController();
  TextEditingController txt_surname = TextEditingController();
  TextEditingController txt_address = TextEditingController();
  TextEditingController txt_mobile = TextEditingController();
  TextEditingController txt_detail = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController txt_email = TextEditingController();
  TextEditingController txt_language = TextEditingController();
  TextEditingController txt_language1 = TextEditingController();
  TextEditingController txt_language2 = TextEditingController();
  TextEditingController txt_hobby = TextEditingController();
  TextEditingController txt_hobby1 = TextEditingController();
  TextEditingController txt_hobby2 = TextEditingController();
  TextEditingController txt_pr = TextEditingController();
  TextEditingController txt_pr1 = TextEditingController();
  TextEditingController txt_pr2 = TextEditingController();
  TextEditingController txt_skill = TextEditingController();
  TextEditingController txt_skill1 = TextEditingController();
  TextEditingController txt_skill2 = TextEditingController();
  TextEditingController txt_exp = TextEditingController();
  TextEditingController txt_ref = TextEditingController();
  TextEditingController txt_edu = TextEditingController();
  TextEditingController txt_edu1 = TextEditingController();

  File f1 = File("");
  var txtkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: SafeArea(
          child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.orange,
            Colors.redAccent,
            Colors.orangeAccent,
            Colors.red,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Resume App",
                    style: TextStyle(fontSize: 40, color: Colors.white70),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      dialog();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 150,
                      backgroundImage: FileImage(f1),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 30,
                      ),
                      Text(
                        "  PERSON DETAIL",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  textform("Enter Name", txt_name),
                  SizedBox(
                    height: 25,
                  ),
                  textform("Enter Surname", txt_surname),
                  SizedBox(
                    height: 25,
                  ),
                  textform("Enter MobileNumber", txt_mobile),
                  SizedBox(
                    height: 25,
                  ),
                  textform("Enter E-mail", txt_email),
                  SizedBox(
                    height: 25,
                  ),
                  textform("Enter Address", txt_address),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.language,
                        size: 30,
                      ),
                      Text(
                        "  LANGUAGES",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Language", txt_language),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Language1", txt_language1),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Language2", txt_language2),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.gamepad_outlined,
                        size: 30,
                      ),
                      Text(
                        "   HOBBY",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Hobby", txt_hobby),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Hobby", txt_hobby1),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Hobby", txt_hobby2),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.real_estate_agent_sharp,
                        size: 30,
                      ),
                      Text(
                        "   PROJECTS",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Project1", txt_pr),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Project2", txt_pr1),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Project3", txt_pr2),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_book,
                        size: 40,
                      ),
                      Text(
                        "  EXPERIENCE",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Experience", txt_exp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.psychology_outlined,
                        size: 40,
                      ),
                      Text(
                        "  SKILLS",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Skill1", txt_skill),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Skill2", txt_skill1),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Skill3", txt_skill2),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.history_edu,
                        size: 40,
                      ),
                      Text(
                        "   EDUCATION",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter School Name", txt_edu),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Enter Collage Name", txt_edu1),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_accessibility,
                        size: 30,
                      ),
                      Text(
                        "   REFERANCE",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  textform("Referance", txt_ref),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange.shade900),
                          onPressed: () {
                            setState(() {
                              if (txtkey.currentState!.validate() == true) {
                                model m1 = model(
                                    txt_name.text,
                                    txt_surname.text,
                                    txt_address.text,
                                    txt_mobile.text,
                                    txt_detail.text,
                                    f1.path,
                                    txt_email.text,
                                    txt_language.text,
                                    txt_language1.text,
                                    txt_language2.text,
                                    txt_hobby.text,
                                    txt_hobby1.text,
                                    txt_hobby2.text,
                                    txt_pr.text,
                                    txt_pr1.text,
                                    txt_pr2.text,
                                    txt_skill.text,
                                    txt_skill1.text,
                                    txt_skill2.text,
                                    txt_exp.text,
                                    txt_ref.text,
                                    txt_edu.text,
                                    txt_edu1.text);
                                Navigator.pushNamed(context, 'second/',
                                    arguments: m1);
                              }
                            });
                          },
                          child: Text("Next")),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          child: ElevatedButton(
                              onPressed: () {
                                pdf1();
                              },
                              child: Text("PDF"))),
                      ElevatedButton(
                          onPressed: () {
                            txt_name.text = "hello";
                            txt_surname.text = "hello";
                            txt_email.text = "hello";
                            txt_hobby.text = "hello";
                            txt_language.text = "hello";
                            txt_detail.text = "hello";
                            txt_address.text = "hello";
                            txt_mobile.text = "hello";
                            txt_exp.text = "hello";
                            txt_pr.text = "hello";
                            txt_pr1.text = "hello";
                            txt_pr2.text = "hello";
                            txt_skill.text = "hello";
                            txt_skill1.text = "hello";
                            txt_skill2.text = "hello";
                            txt_language1.text = "hello";
                            txt_language2.text = "hello";
                            txt_hobby1.text = "hello";
                            txt_hobby2.text = "hello";
                            txt_ref.text = "hello";
                            txt_edu.text = "hello";
                            txt_edu1.text = "hello";
                          },
                          child: Text('Auto')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  Widget textform(txt, contro) {
    return TextFormField(
        controller: contro,
        maxLines: null,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "$txt",
          labelStyle: TextStyle(fontSize: 17, color: Colors.amberAccent),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return '$txt';
          } else {
            return null;
          }
        });
  }

  void dialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            alignment: Alignment(0.1, 0.1),
            title: Text("Select AnyButton"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      ImagePicker img = ImagePicker();
                      XFile? f2 =
                          await img.pickImage(source: ImageSource.gallery);
                      setState(() {
                        f1 = File(f2!.path);
                      });
                      Navigator.pop(context);
                    },
                    child: Text("Gallery"),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      ImagePicker img = ImagePicker();
                      XFile? f2 =
                          await img.pickImage(source: ImageSource.camera);
                      setState(() {
                        f1 = File(f2!.path);
                      });
                      Navigator.pop(context);
                    },
                    child: Text("Camera"),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  ),
                ],
              ),
            ],
          );
        });
  }
}
