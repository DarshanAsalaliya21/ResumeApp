import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'Resume/Model.dart';

void pdf1() async {
  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        orientation: pw.PageOrientation.portrait,
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.all(15),
        build: (pw.Context context) {
          return pw.Center(
              child:
                  pw.Container(height: 200, width: 300, color: PdfColors.blue));
        }),
  );
  Directory directory = await getApplicationDocumentsDirectory();

  File f1 = File("${directory.path}/flutter01.pdf");

  print("============${f1.path}");
  f1.writeAsBytes(await pdf.save());
}

void resume2PDF(Model m1) async {
  var pdf = pw.Document();
  pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Container(
          child: pw.Column(
            children: [
              pw.Container(height: 200, width: 200, color: PdfColors.red),
              pw.Row(children: [
                pw.Text("Name ====== "),
                pw.Text("${m1.name}"),
              ]),
              pw.Row(children: [
                pw.Text("Objective ====== "),
                pw.Text("${m1.object}"),
              ]),
              pw.Row(children: [
                pw.Text("Qa ====== "),
                pw.Text("${m1.qa}"),
              ]),
              pw.Row(children: [
                pw.Text("Skill ====== "),
                pw.Text("${m1.skill}"),
              ]),
            ],
          ),
        );
      },
      margin: pw.EdgeInsets.all(10),
      pageFormat: PdfPageFormat.a4));

  Directory directory = await getApplicationDocumentsDirectory();

  File f1 = File("${directory.path}/flutter01.pdf");

  print("============${f1.path}");
  f1.writeAsBytes(await pdf.save());
}


void getData()
{
  print("Testing          ==============");
}
