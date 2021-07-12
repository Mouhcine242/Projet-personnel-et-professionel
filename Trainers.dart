import'package:flutter/material.dart';
import 'package:projet_ppp/ChatPage.dart';
import'package:projet_ppp/signin.dart' as st;

import 'chat_detail_page.dart';
class Trainers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 10,
        brightness: Brightness.light,
        backgroundColor: Colors.white70,
        shadowColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.account_circle,color: Colors.cyan[300],),
          iconSize: 30,
          onPressed: () {},
        ),
        title:Text(st.username.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
        actions: [
          IconButton(icon:Icon(Icons.notifications,color: Colors.black,) ,
              iconSize: 30,
              onPressed:() {}),
          IconButton(
              icon: Icon(Icons.sort_sharp,color: Colors.black,),
              iconSize: 30,
              onPressed: () {})
        ],
      ),
      body: ChatPage(),
    );
  }

}

class ChatMessage{
  String message;
  MessageType type;
  ChatMessage({@required this.message,@required this.type});
}

class ChatUsers{
  String text;
  String secondaryText;
  String image;
  String time;
  ChatUsers({@required this.text,@required this.secondaryText,@required this.image,@required this.time});
}

class SendMenuItems{
  String text;
  IconData icons;
  MaterialColor color;
  SendMenuItems({@required this.text,@required this.icons,@required this.color});
}
