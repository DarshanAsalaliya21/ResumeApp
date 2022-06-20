import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/Resume/Model.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  File f1 = File("");

  TextEditingController txtName= TextEditingController();
  TextEditingController txtQa= TextEditingController();
  TextEditingController txtObject= TextEditingController();
  TextEditingController txtSkill= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Resume"),
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () async {
                ImagePicker picker = ImagePicker();
                XFile? f2 = await picker.pickImage(source: ImageSource.gallery);

                setState(() {
                  f1 = File(f2!.path);
                });
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(f1.path),
              ),
            ),

            TextField(
              controller:txtName,
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller:txtQa,
              decoration: InputDecoration(
                hintText: "Qa",
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller:txtObject,
              decoration: InputDecoration(
                hintText: "Object",
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller:txtSkill,
              decoration: InputDecoration(
                hintText: "Skill",
              ),
            ),
            SizedBox(height: 10,),


            ElevatedButton(onPressed: () {

              String name = txtName.text;
              String Qa = txtQa.text;
              String object = txtObject.text;
              String skill = txtSkill.text;

              Model m1 =  Model(name,Qa,object,skill,f1.path);

            Navigator.pushNamed(context, 'resume',arguments: m1);
            }, child: Text("Next"),),
          ],
        ),
      ),
    );
  }
}


