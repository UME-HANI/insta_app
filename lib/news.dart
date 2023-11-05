import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NewsPageState();
  }
}

class  NewsPageState extends State<NewsPage>
//  implements LoginScreenContract, AuthStateListener
    {
  final formKey = new GlobalKey<FormState>();
  @override
Widget build(BuildContext context) {
  width:
  MediaQuery
      .of(context)
      .size
      .width * 1;
  height:
  MediaQuery
      .of(context)
      .size
      .height * 1;
  padding:
  EdgeInsets.only(top: 40, right: 10, left: 10);
  return Scaffold(
    backgroundColor: Color(0xFFfbfcfc),
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(134, 31, 65, 0.8),
      title: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding:EdgeInsets.only(left:0),
            child: Text("News", style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),],),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),


    ),
    body: Container(

      height: MediaQuery
          .of(context)
          .size
          .height,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child:Form(
        key: formKey,
        child: SingleChildScrollView(
          child: new Column(

            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10,right: 0,top: 10),
              child: Row(
                children:[
                  Container(
                    color: Colors.black12,
                    width: 340,
                    height: 130,
                    child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20,left: 10),
                              child: Text("INDIA", textAlign:TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red)),
                            ), Padding(
                              padding: EdgeInsets.only(top: 10,left: 10),
                              child: Text("One person was killed after a helicopter crashed at the navy headquarters in Kochi during a routine training on Saturday. ",style: TextStyle(fontSize: 15,color: Colors.black),),),

                          ]

                      ),
                    ),


                  ),

                ],),),
              Padding(padding: EdgeInsets.only(left: 10,right: 0,top: 10),
                child: Row(
                  children:[
                    Container(
                      color: Colors.black12,
                      width: 340,
                      height: 130,
                      child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 20,left: 10),
                                child: Text("BOLLYWOOD", textAlign:TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red)),
                              ), Padding(
                                padding: EdgeInsets.only(top: 10,left: 10),
                                child: Text("Shah Rukh Khan shared two new posters of 'Dunki'. Apart from SRK, it features Taapsee Pannu, Vicky Kaushal, Vikram Kochhar and Anil Grover. ",style: TextStyle(fontSize: 15,color: Colors.black),),),

                            ]

                        ),
                      ),


                    ),

                  ],),),
              Padding(padding: EdgeInsets.only(left: 10,right: 0,top: 10),
                child: Row(
                  children:[
                    Container(
                      color: Colors.black12,
                      width: 340,
                      height: 130,
                      child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 20,left: 10),
                                child: Text("TRENDING NEWS", textAlign:TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red)),
                              ), Padding(
                                padding: EdgeInsets.only(top: 10,left: 10),
                                child: Text("In the Instagram post, Mark Zuckerberg, shared several photos from his hospital bed, showing his left leg in a supportive brace after the ACL repair.",style: TextStyle(fontSize: 15,color: Colors.black),),),

                            ]

                        ),
                      ),


                    ),

                  ],),),
              Padding(padding: EdgeInsets.only(left: 10,right: 0,top: 10),
                child: Row(
                  children:[
                    Container(
                      color: Colors.black12,
                      width: 340,
                      height: 130,
                      child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 20,left: 10),
                                child: Text("WORLD CUP 2023", textAlign:TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red)),
                              ), Padding(
                                padding: EdgeInsets.only(top: 10,left: 10),
                                child: Text("Rachin Ravindra opened up on the special feeling he had in Bengaluru after scoring 108 against Pakistan on November 4. ",style: TextStyle(fontSize: 15,color: Colors.black),),),

                            ]

                        ),
                      ),


                    ),

                  ],),),
],),),),),);}
}