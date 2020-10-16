import 'package:flutter/material.dart';

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
      backgroundColor: Colors.blueGrey[200],
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
                padding: const EdgeInsets.only(left: 15),
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
                            Text("Symptom\nTracker",style: TextStyle(
                              height:1.7,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),),
                            Image.asset("assets/images/book-3.png")
                          ],
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 170),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFF1d263b),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
                        ),
                        child:  ListView(
                          padding: EdgeInsets.only(
                              left: 40,
                              right: 40,
                              bottom:40,
                              top:45
                          ),
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        height: 4,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                      ),
                                      Container(
                                        height: 3,
                                        width: size.width - 120,
                                        decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("1/10",style: TextStyle(color: Colors.white,),)
                              ],
                            ),
                            SizedBox(height: 40,),
                            Text("Have you\nexperienced any\nof the following\nsymptoms:",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white,height: 1.6),),
                            SizedBox(height: 40,),
                            Text("Fever, Cough, Sneezing,\nSore Throat, Difficult Breathing",style: TextStyle(
                              height: 1.7,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),),
                            SizedBox(height: 40,),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: (size.width -120) /2  ,
                                  child: FlatButton(
                                      color: Colors.white,
                                      onPressed: (){
                                        // your no function here
                                      }, child: Text("No",style: TextStyle(fontSize: 18),)),
                                ),
                                SizedBox(width: 40,),
                                Container(
                                  width: (size.width -120) /2  ,
                                  child: FlatButton(
                                      color: Colors.white,
                                      onPressed: (){
                                        // your yes function here
                                      }, child: Text("Yes",style: TextStyle(fontSize: 18),)),

                                ),
                              ],
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