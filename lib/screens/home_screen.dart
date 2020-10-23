import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recording_page/widgets/rounded_button.dart';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../PdfPreviewScreen.dart';

final pdf = pw.Document();
writeOnPdf(){
  pdf.addPage(
      pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          margin:pw.EdgeInsets.all(32),
          build: (pw.Context context){
            return <pw.Widget>[
              pw.Header(
                level:0,
                child: pw.Text("Remote Vitals Results for User (Insert Name)"),
              ),
              pw.Paragraph(
                  text:" yeet"
              ),
            ];
          }
      )
  );
}

Future savePdf()async {
  Directory documentDirectory = await getApplicationDocumentsDirectory();

  String documentPath = documentDirectory.path;

  File file = File("$documentPath/example.pdf");

  file.writeAsBytesSync(pdf.save());
}
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
                                onPressed: () async{
                                  writeOnPdf();
                                  await savePdf();
                                  Directory documentDirectory = await getApplicationDocumentsDirectory();

                                  String documentPath = documentDirectory.path;

                                  String fullPath = "$documentPath/example.pdf";

                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => PdfPreviewScreen(path: fullPath,)
                                  ));
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


