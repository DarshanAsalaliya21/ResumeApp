
import 'package:flutter/material.dart';
import 'package:resume_app/Model_Classs.dart';

class S_Screen extends StatefulWidget {
  const S_Screen({Key? key}) : super(key: key);

  @override
  State<S_Screen> createState() => _S_ScreenState();
}

class _S_ScreenState extends State<S_Screen> {
  @override
  Widget build(BuildContext context) {
    model m1 = ModalRoute.of(context)!.settings.arguments as model;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'third',arguments: m1);
                      },
                      child: Clip("9.jpg")),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'third',arguments: m1);
                      },
                      child: Clip("8.png")),
                ],
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'third', arguments: m1);
                      },
                      child: Clip("7.jpg")),
                  InkWell(onTap: () {
                    Navigator.pushNamed(context, 'third',arguments: m1);
                  }, child: Clip("3.png")),
                ],
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'third', arguments: m1);
                      },
                      child: Clip("7.jpg")),
                  InkWell(onTap: () {
                    Navigator.pushNamed(context, 'third',arguments: m1);
                  }, child: Clip("3.png")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Clip(image) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      height: 300,
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: ClipRRect(
        child: Image.asset("Assets/Image/$image",),
      ),
    );
  }
}
