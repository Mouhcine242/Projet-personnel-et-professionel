import 'package:flutter/material.dart';

import 'Chat1.dart';
import 'Chat2.dart';
import 'Page1.dart';
import 'Trainers.dart';


class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Trainer1", secondaryText: "Awesome Setup", image: "assets/userImage1.jpeg", time: ""),
    ChatUsers(text: "Trainer2", secondaryText: "That's Great", image: "assets/userImage2.jpeg", time: ""),
    ChatUsers(text: "Trainer3", secondaryText: "Hey where are you?", image: "assets/userImage3.jpeg", time: ""),
    ChatUsers(text: "Trainer4", secondaryText: "Busy! Call me in 20 mins", image: "assets/userImage4.jpeg", time: ""),
    ChatUsers(text: "Trainer5", secondaryText: "Thankyou, It's awesome", image: "assets/userImage5.jpeg", time: ""),
    ChatUsers(text: "Trainer6", secondaryText: "will update you in evening", image: "assets/userImage6.jpeg", time: ""),
    ChatUsers(text: "Trainer7", secondaryText: "Can you please share the file?", image: "assets/userImage7.jpeg", time: ""),
    ChatUsers(text: "Trainer8", secondaryText: "How are you?", image: "assets/userImage8.jpeg", time: ""),
  ];
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 1;
    return Scaffold(
      bottomNavigationBar: ClipRRect(
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Chats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.pink,size: 20,),
                          SizedBox(width: 2,),
                          Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}



