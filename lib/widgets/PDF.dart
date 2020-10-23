import 'package:pdf/pdf.dart';
import 'dart:io';
import 'package:pdf/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart' as material;
import 'package:recording_page/PdfPreviewScreen.dart';

reportView(context) async {
  final Document pdf = Document();

  pdf.addPage(MultiPage(

      pageFormat:
      PdfPageFormat.letter.copyWith(marginBottom: 1.5 * PdfPageFormat.cm),
      crossAxisAlignment: CrossAxisAlignment.start,
      header: (Context context) {
        if (context.pageNumber == 1) {
          return null;
        }
        return Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
            padding: const EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
            decoration: const BoxDecoration(
                border:
                BoxBorder(bottom: true, width: 0.5, color: PdfColors.grey)),
            child: Text('Remote Vitals Report for Patient (Insert Name)',
                style: Theme.of(context)
                    .defaultTextStyle
                    .copyWith(color: PdfColors.grey)));
      },
      footer: (Context context) {
        return Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(top: 1.0 * PdfPageFormat.cm),
            child: Text('Page ${context.pageNumber} of ${context.pagesCount}',
                style: Theme.of(context)
                    .defaultTextStyle
                    .copyWith(color: PdfColors.grey)));
      },
      build: (Context context) => <Widget>[
        Header(
            level: 0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Report', textScaleFactor: 2),
                  PdfLogo()
                ])),
        Header(level: 1, text: 'General Information'),
        Paragraph(
            text:
            '(Insert Name) is a/an (Insert Age) years old (Insert Sex). This report was compiled on (Enter Date & Time). The user is experiencing the following symptoms: (insert symptoms). The heartbeat and breathing rate was measured at: (insert values). For the sake of quality control and assurance, please view the graphs before making a diagnosis, as it contains pertinent information.'),
        Paragraph(
            text:
      ' Note: The information contained in this message may be privileged and confidential and protected from disclosure. If the reader of this message is not the intended recipient, or an employee or agent responsible for delivering this message to the intended recipient, you are hereby notified that any dissemination, distribution, or copying of this communication is strictly prohibited. If you have received this communication in error, please notify us immediately by emailing remotevitals@gmail.com. Please also destroy any hard copies and delete this message from your computer. Opinions, conclusions, and any other information in this message that do not relate to the official business of our firm shall be understood as neither given nor endorsed by it.'),
        Header(level: 1, text: 'Summarized Information'),
        Paragraph(
            text:
            'The table below summarizes all the important information that the user has provided with informed consent'),
        Padding(padding: const EdgeInsets.all(10)),
        Table.fromTextArray(context: context, data: const <List<String>>[
          <String>['Date Taken', 'Age', 'Gender', 'Heartbeat', 'Breathing Rate', 'Symptoms', 'Possible Causes'],
          <String>['2000', 'Ipsum 1.0', 'Lorem 1','Ipsum 1.0', 'Lorem 1','Ipsum 1.0', 'Lorem 1', ],

        ]),
        Table.fromTextArray(context: context, data: const <List<String>>[
          <String>['Unique Identifier',],
          <String>['Code',],

        ]),
      ]));


  final String dir = (await getApplicationDocumentsDirectory()).path;
  final String path = '$dir/report.pdf';
  final File file = File(path);
  await file.writeAsBytes(pdf.save());
  material.Navigator.of(context).push(
    material.MaterialPageRoute(
      builder: (_) => PdfViewerPage(path: path),
    ),
  );


}

