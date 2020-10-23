import 'package:flutter/material.dart';
import 'package:recording_page/widgets/rounded_button.dart';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class HomeScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:
      Container(
        height: double.infinity,
        width: double.infinity,
        child: FittedBox(child: Image.asset('assets/images/Bitmap.png'),
       fit: BoxFit.cover),

      ),
    );
  }


}
class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(126, 174, 214, 1.0),
      body: getBody(),
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
              ),
            ),
            Expanded(
              child: Container(
                height: size.height,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("",style: TextStyle(
                              height:1.7,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),),
                            Image.asset("assets/images/image-1.PNG")
                          ],
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 190),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(29, 26, 87, 1.0),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70))
                        ),
                        child:  ListView(
                          padding: EdgeInsets.only(
                              left: 40,
                              right: 40,
                              bottom:40,
                              top:45
                          ),
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text("Symptom Query: A Fast & Accurate Health Assessment",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white,height: 1.4),),
                            SizedBox(height: 20,),
                            Text("Symptom Query is designed to help you understand what your medical symptoms could mean using AI-driven software.",style: TextStyle(
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),),
                            SizedBox(height: 20,),
                            SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child: RoundedButton(
                            text: "See Possible Causes",
                            fontSize: 18,
                            press: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) {
                            return SymptomChecker();
                            },),);},),),],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}

class SymptomChecker extends StatefulWidget {
  @override
  _SymptomChecker createState() => _SymptomChecker();
}

class _SymptomChecker extends State<SymptomChecker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(126, 174, 214, 1.0),
      body: getBody(),
    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 0),
              child: Icon(Icons.arrow_back_ios,color: Colors.black,),
            ),
          ),
          Expanded(
            child: Container(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("",style: TextStyle(
                            height:4,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                          Image.asset("assets/images/image-removebg-preview (7).png")
                        ],
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 148),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(29, 26, 87, 1.0),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70))
                      ),
                      child:  ListView(
                        padding: EdgeInsets.only(
                            left: 40,
                            right: 40,
                            bottom:40,
                            top:20
                        ),
                        children: <Widget>[
                          SizedBox(height: 10,),
                          Text("Symptom Query: A Fast & Accurate Health Assessment",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white,height: 1.4),),
                          SizedBox(height: 10,),
                          Text("Please select the symptoms that you are experiencing. Symptom Query will combine the symptoms selected in the Symptom Tracker Section and the Query Section to best understand your condition.",style: TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                      SizedBox(height: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .1,
                            child: RoundedButton(
                              text: "Symptom One",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .2,
                            child: RoundedButton(
                              text: "Symptom Two",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .5,
                            child: RoundedButton(
                              text: "Add Additional Symptoms",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .5,
                              child: FloatingActionButton(
                                onPressed: (){

                                },
                                child: Icon(Icons.share)
                              ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Future<Uint8List> generateReport(PdfPageFormat pageFormat) async {
  const tableHeaders = ['Category', 'Budget', 'Expense', 'Result'];

  const dataTable = [
    ['Phone', 80, 95, -15],
    ['Internet', 250, 230, 20],
    ['Electricity', 300, 375, -75],
    ['Movies', 85, 80, 5],
    ['Food', 300, 350, -50],
    ['Fuel', 650, 550, 100],
    ['Insurance', 250, 310, -60],
  ];

  final baseColor = PdfColors.cyan;

  // Create a PDF document.
  final document = pw.Document();

  // Add page to the PDF
  document.addPage(
    pw.Page(
      pageFormat: pageFormat,
      theme: pw.ThemeData.withFont(
        base: pw.Font.ttf(await rootBundle.load('assets/open-sans.ttf')),
        bold: pw.Font.ttf(await rootBundle.load('assets/open-sans-bold.ttf')),
      ),
      build: (context) {
        final chart1 = pw.Chart(
          left: pw.Container(
            alignment: pw.Alignment.topCenter,
            margin: const pw.EdgeInsets.only(right: 5, top: 10),
            child: pw.Transform.rotateBox(
              angle: pi / 2,
              child: pw.Text('Amount'),
            ),
          ),
          overlay: pw.ChartLegend(
            position: const pw.Alignment(-.7, 1),
            decoration: const pw.BoxDecoration(
              color: PdfColors.white,
              border: pw.BoxBorder(
                bottom: true,
                top: true,
                left: true,
                right: true,
                color: PdfColors.black,
                width: .5,
              ),
            ),
          ),
          grid: pw.CartesianGrid(
            xAxis: pw.FixedAxis.fromStrings(
              List<String>.generate(
                  dataTable.length, (index) => dataTable[index][0]),
              marginStart: 30,
              marginEnd: 30,
              ticks: true,
            ),
            yAxis: pw.FixedAxis(
              [0, 100, 200, 300, 400, 500, 600, 700],
              format: (v) => '\$$v',
              divisions: true,
            ),
          ),
          datasets: [
            pw.BarDataSet(
              color: PdfColors.blue100,
              legend: tableHeaders[2],
              width: 15,
              offset: -10,
              borderColor: baseColor,
              data: List<pw.LineChartValue>.generate(
                dataTable.length,
                    (i) {
                  final num v = dataTable[i][2];
                  return pw.LineChartValue(i.toDouble(), v.toDouble());
                },
              ),
            ),
            pw.BarDataSet(
              color: PdfColors.amber100,
              legend: tableHeaders[1],
              width: 15,
              offset: 10,
              borderColor: PdfColors.amber,
              data: List<pw.LineChartValue>.generate(
                dataTable.length,
                    (i) {
                  final num v = dataTable[i][1];
                  return pw.LineChartValue(i.toDouble(), v.toDouble());
                },
              ),
            ),
          ],
        );

        final chart2 = pw.Chart(
          grid: pw.CartesianGrid(
            xAxis: pw.FixedAxis([0, 1, 2, 3, 4, 5, 6]),
            yAxis: pw.FixedAxis(
              [0, 200, 400, 600],
              divisions: true,
            ),
          ),
          datasets: [
            pw.LineDataSet(
              drawSurface: true,
              isCurved: true,
              drawPoints: false,
              color: baseColor,
              data: List<pw.LineChartValue>.generate(
                dataTable.length,
                    (i) {
                  final num v = dataTable[i][2];
                  return pw.LineChartValue(i.toDouble(), v.toDouble());
                },
              ),
            ),
          ],
        );

        final table = pw.Table.fromTextArray(
          border: null,
          headers: tableHeaders,
          data: dataTable,
          headerStyle: pw.TextStyle(
            color: PdfColors.white,
            fontWeight: pw.FontWeight.bold,
          ),
          headerDecoration: pw.BoxDecoration(
            color: baseColor,
          ),
          rowDecoration: pw.BoxDecoration(
            border: pw.BoxBorder(
              bottom: true,
              color: baseColor,
              width: .5,
            ),
          ),
        );

        return pw.Column(
          children: [
            pw.Text('Budget Report',
                style: pw.TextStyle(
                  color: baseColor,
                  fontSize: 40,
                )),
            pw.Divider(thickness: 4),
            pw.Expanded(flex: 3, child: chart1),
            pw.Divider(),
            pw.Expanded(
              flex: 2,
              child: pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(child: chart2),
                  pw.SizedBox(width: 10),
                  pw.Expanded(child: table),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Expanded(
                    child: pw.Column(children: [
                      pw.Container(
                        alignment: pw.Alignment.centerLeft,
                        padding: const pw.EdgeInsets.only(bottom: 10),
                        child: pw.Text(
                          'Expense By Sub-Categories',
                          style: pw.TextStyle(
                            color: baseColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      pw.Text(
                        'Total expenses are broken into different categories for closer look into where the money was spent.',
                        textAlign: pw.TextAlign.justify,
                      )
                    ])),
                pw.SizedBox(width: 10),
                pw.Expanded(
                  child: pw.Column(
                    children: [
                      pw.Container(
                        alignment: pw.Alignment.centerLeft,
                        padding: const pw.EdgeInsets.only(bottom: 10),
                        child: pw.Text(
                          'Spent vs. Saved',
                          style: pw.TextStyle(
                            color: baseColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      pw.Text(
                        'Budget was originally \$1915. A total of \$1990 was spent on the month of January which exceeded the overall budget by \$75',
                        textAlign: pw.TextAlign.justify,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ),
  );

  // Return the PDF file content
  return document.save();
}