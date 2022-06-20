
import 'package:flutter/material.dart';
import 'package:resume_app/PDF_Screen.dart';

import 'Model.dart';

class Resume2Screen extends StatefulWidget {
  const Resume2Screen({Key? key}) : super(key: key);

  @override
  State<Resume2Screen> createState() => _Resume2ScreenState();
}

class _Resume2ScreenState extends State<Resume2Screen> {

  @override
  Widget build(BuildContext context) {
   Model m1 =  ModalRoute.of(context)!.settings.arguments as Model;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              resume2PDF(m1);
            }, icon:Icon(Icons.add))
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(m1.image),
                ),
              ),
              ListTile(
                leading: Text("Name ====== "),
                title: Text("${m1.name}"),
              ),

              ListTile(
                leading: Text("Object ====== "),
                title: Text("${m1.object}"),
              ),

              ListTile(
                leading: Text("QA"),
                title: Text("${m1.qa}"),
              ),

              ListTile(
                leading: Text("Skill ====== "),
                title: Text("${m1.skill}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
