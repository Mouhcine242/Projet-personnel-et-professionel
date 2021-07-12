import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_ppp/ChatPage.dart';

import 'Page1.dart';


class Chat1 extends StatefulWidget{
  @override
  _Chat1State createState() => _Chat1State();
}

class _Chat1State extends State<Chat1> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              if(index==0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));
              }
              if(index == 1){

                Navigator.push(context, MaterialPageRoute(builder: (context)=> Chat1()));
              }

            });
          },
          currentIndex: _currentIndex,
          iconSize: 35,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black38,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search")
          ],
        ),
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: (MediaQuery.of(context).size.height)*0.5,),
            Text("Are you Trainee or Trainer ?",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800,color: Colors.black),),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage()));

              },
            height: 60,
            color: Colors.white70,
            elevation: 4,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.black
              ),
              borderRadius:  BorderRadius.circular(50),
            ),
            child: Text(
              "Trainee",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
            ),),
            SizedBox(height: 20,),
            MaterialButton(onPressed: () {

            },
            height: 60,
            color: Colors.white70,
            elevation: 4,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.black
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              "Trainer",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
            ),),
          ],
        ),
      ),

    );
  }
}

class Trainee {
  String name;

  String id;

  Trainee({@required this.name, @required this.id});

  factory Trainee.fromDocument(DocumentSnapshot doc){
    String name;
    String id;
    try{
      name = doc.get('name');
    }catch(e){}
    try{
      id = doc.get('id');
    }catch(e){}
    return Trainee(name: name,
        id: doc.id);
  }

}
class Trainer{
  String name;
  String id;
  String url;
  Trainer({@required this.name,@required this.id,@required this.url});
  factory Trainer.fromDocument(DocumentSnapshot doc){
    String name;
    String id;
    String url;

    try{
      name = doc.get('name');
    }catch(e){}

    try{
      id = doc.get('id');
    }catch(e){}
    try{
      url = doc.get('url');
    }catch(e){}
    return Trainer(name: name, id: doc.id, url: url);
  }
}





