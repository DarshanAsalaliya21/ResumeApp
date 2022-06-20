import 'package:flutter/material.dart';
import 'package:resume_app/Resume/Model.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {

    Model l1 =  ModalRoute.of(context)!.settings.arguments as Model ;

    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Resume")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(onTap:(){
              Navigator.pushNamed(context, 'resume2',arguments: l1);

            },child: Container(height:200,child: Image.asset('Assets/Image/2.jpg'))),
            GestureDetector(onTap:(){},child: Container(height:200,child: Image.asset('Assets/Image/3.jpg'))),
            GestureDetector(onTap:(){},child: Container(height:200,child: Image.asset('Assets/Image/4.jpg'))),
          ],
        ),
      ),
    ),);
  }
}
