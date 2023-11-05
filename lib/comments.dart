import 'package:flutter/material.dart';

class CommentsPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CommentsPageState();
  }
}

class  CommentsPageState extends State<CommentsPage>
//  implements LoginScreenContract, AuthStateListener
    {
  final formKey = new GlobalKey<FormState>();
  bool isPressed=false;
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
        child: Text("My Feed", style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),],),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),


            ),
    body:Container(

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
    Card(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "assets/person_png.jpg",
                        fit: BoxFit.fill,
                        width: 120,
                        height: 120,
                      )),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alexa", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                          child: Text("04:26 PM ",style: TextStyle(fontSize: 10,color: Colors.grey),),),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                          child: Text("San Francisco,CA,USA ",style: TextStyle(fontSize: 15,),)),
                        ]

                    ),
                  ),

                 ],
            ),


    )
        ),
Row(
  children: [
    Padding(padding: EdgeInsets.only(left: 10,top: 10),
    child: Container(
        height: 180.0,
        width: 340.0,
    decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/download.png"),

          fit: BoxFit.fill,
        )
    )
    ),
    ),
  ],
),
      Row(
          children: [
      Padding(padding: EdgeInsets.only(left: 10,top: 10),
        child: IconButton(onPressed: () { setState(() => isPressed = true); }, icon: Icon(
            Icons.favorite,color: (isPressed)
            ? Colors.red
            : Colors.black12),),
      ),
            Padding(padding: EdgeInsets.only(left: 2,top: 10),
                child:Text("1",style: TextStyle(color: Colors.black),)),
            Padding(padding: EdgeInsets.only(left: 10,top: 10),
              child: IconButton(onPressed: () {  }, icon: Icon(
                  Icons.comment,color:
                 Colors.black),),
            ),
            Padding(padding: EdgeInsets.only(left: 2,top: 10),
              child:Text("1",style: TextStyle(color: Colors.black),)),
          ],),
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(padding: EdgeInsets.only(left: 10,top: 10),

          child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                "assets/person_png.jpg",
                fit: BoxFit.fill,
                width: 50,
                height: 50,
              ))),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,),
            child:Container(
              color: Colors.black12,
              width: 280,
              height: 100,
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20,left: 10),
                      child: Text("Alexa", textAlign:TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      ), Padding(
                        padding: EdgeInsets.only(top: 10,left: 10),
                        child: Text("Wow, I had no idea how beautiful these car was.. ",style: TextStyle(fontSize: 15,color: Colors.black),),),

                    ]

                ),
              ),


          ),



          ),
  ],
),
      Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 10,top: 30),
          child: MaterialButton(
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            onPressed: () {},
            child: Text(
              "Add Comment to this Post...                        ",
              style: TextStyle(color: Colors.black),
            ),
          ),),
          Padding(padding: EdgeInsets.only(left: 10,top: 25),
          child: IconButton(onPressed: () {  }, icon: Icon(Icons.send,color: Colors.blue,),),)
        ],
      ),
      SizedBox(height: 20,)
     ],),),),),

    );}
}