

import 'package:flutter/material.dart';
import 'package:insta_app/comments.dart';
import 'package:insta_app/news.dart';

class ProfilePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ProfilePageState();
  }
}

class  ProfilePageState extends State<ProfilePage>
//  implements LoginScreenContract, AuthStateListener
    {
  final formKey = new GlobalKey<FormState>();
  int _selectedIndex = 0;
  Color _iconColor = Colors.white;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => new ProfilePage()),
        );

        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => new NewsPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => new CommentsPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => new ProfilePage()),
        );
        break;
      case 4:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => new ProfilePage()),
        // );



        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }


  // var favorite = Provider.of<MyFavorite>(context);
  // @override
  // Widget build(BuildContext context) {
  //   width:
  //   MediaQuery
  //       .of(context)
  //       .size
  //       .width * 1;
  //   height:
  //   MediaQuery
  //       .of(context)
  //       .size
  //       .height * 1;
  //   padding:
  //   EdgeInsets.only(top: 40, right: 10, left: 10);
  //   return Scaffold(
  //     backgroundColor: Color(0xFFfbfcfc),
  //     body: Container(
  //
  //       height: MediaQuery
  //           .of(context)
  //           .size
  //           .height,
  //       width: MediaQuery
  //           .of(context)
  //           .size
  //           .width,
  //       child:Form(
  //         key: formKey,
  //         child: SingleChildScrollView(
  //           child: new Column(
  //
  //             children: <Widget>[
  //               Row(
  //                 children:[
  //                   Padding(padding: EdgeInsets.only(left: 130, top: 20),
  //
  //                     child: SizedBox.fromSize(
  //                       size: Size(130, 130),
  //                       child:Stack(
  //                         clipBehavior: Clip.none,
  //                         fit: StackFit.expand,
  //                         children: [
  //                           ClipOval(
  //                             child: Material(
  //                               color: Color(0xFFD9D9D9),
  //                               child: InkWell(
  //                                 onTap: () {},
  //                                 child: Column(
  //                                   mainAxisAlignment: MainAxisAlignment.center,
  //                                   children: <Widget>[
  //
  //                                     Image.asset (
  //                                         "assets/person_png.jpg",
  //                                         height: 130,
  //                                         fit: BoxFit.cover )
  //
  //                                   ],),),),),
  //                           Positioned(
  //                             bottom: 0,
  //                             right: 10,
  //                             child: ClipOval(
  //                               child: Material(
  //                                 color: Colors.white, // Button color
  //                                 child: InkWell(
  //                                   splashColor: Colors.white, // Splash color
  //                                   onTap: () {
  //                                     // _optionsDialogBox("customer_photo");
  //
  //                                   },
  //                                   child: SizedBox(width: 35, height: 35, child: Icon(Icons.camera_alt)),
  //                                 ),
  //                               ),),
  //
  //                           ),],),),),],)

      @override
      Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
      child: getAppBar(), preferredSize: Size.fromHeight(180)),
        bottomNavigationBar: BottomNavigationBar(


            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.person,),
                // color: Color(0xFF3A5A98),

                label: 'Me',

              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper,),
                  label: "News"


              ),


              BottomNavigationBarItem(
                icon: Icon(Icons.comment,),
                label: 'Comment',
              ),
              // BottomNavigationBarItem(
              //
              //     icon: Icon(Icons.favorite, color: Colors.brown),
              //   activeIcon: Icon(Icons.favorite, color: Colors.red),
              //
              //
              //
              //
              //
              //
              //
              //
              //   label: 'Favorite',
              //
              // ),




            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            onTap: _onItemTapped,
            elevation: 5
        ),

        body: getBody(),
      );
      }

      Widget getAppBar() {
      return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      flexibleSpace: SafeArea(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      border: Border.all(color: Colors.black)),
      child: Center(
      child: Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      image: DecorationImage(
      image:AssetImage("assets/person_png.jpg"
      ),
      fit: BoxFit.cover)),
      ),
      ),
      ),
      SizedBox(
      height: 10,
      ),
      Text(
      "Alexa",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(
      height: 10,
      ),
      Text(
      "@alexa123",
      style: TextStyle(fontSize: 15),
      ),
      ],
      )));
      }

      Widget getBody() {
      var size = MediaQuery.of(context).size;
      return SingleChildScrollView(
      child: Column(
      children: [
      SizedBox(
      height: 30,
      ),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Column(
      children: [
      Text(
      "Posts",
      style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      SizedBox(
      height: 8,
      ),
      Text(
      "35",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ],
      ),
      Column(
      children: [
      Text(
      "Followers",
      style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      SizedBox(
      height: 8,
      ),
      Text(
      "1,552",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ],
      ),
      Column(
      children: [
      Text(
      "Follow",
      style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      SizedBox(
      height: 8,
      ),
      Text(
      "182",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ],
      )
      ],
      ),
      SizedBox(
      height: 30,
      ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Padding(padding: EdgeInsets.only(
          left: 10, right: 10),
          child: Container(
            // height: MediaQuery
            //     .of(context)
            //     .size
            //     .height,
            height: 350,
            width: MediaQuery
                .of(context)
                .size
                .width,
        child: Center(
            child: GridView.extent(
              primary: false,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              maxCrossAxisExtent: 200.0,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset("assets/download.png")
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/car1.png")
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/car.png")
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                    child: Image.asset("assets/person_png.jpg")
                ),
                // Container(
                //   padding: const EdgeInsets.all(8),
                //   child: const Text('Fifth', style: TextStyle(fontSize: 20)),
                //   color: Colors.yellow,
                // ),
                // Container(
                //   padding: const EdgeInsets.all(8),
                //   child: const Text('Six', style: TextStyle(fontSize: 20)),
                //   color: Colors.blue,
                // ),
              ],
            )),
          ),),
              ],),
        SizedBox(height: 40,)

      ],));



  }
}