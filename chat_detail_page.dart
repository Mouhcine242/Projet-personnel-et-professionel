import 'package:flutter/material.dart';
import 'Trainers.dart';
import'package:projet_ppp/signin.dart' as st ;
import 'chat_bubble.dart';

enum MessageType{
  Sender,
  Receiver,
}

String message ='';

class ChatDetailPage extends StatefulWidget{
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> chatMessage = [
    ChatMessage(message: "Hi John", type: MessageType.Receiver),
    ChatMessage(message: "Hope you are doin good", type: MessageType.Receiver),
    ChatMessage(message: "Hello Jane, I'm good what about you", type: MessageType.Sender),
    ChatMessage(message: "I'm fine, Working from home", type: MessageType.Receiver),
    ChatMessage(message: "Oh! Nice. Same here man", type: MessageType.Sender),
  ];

  List<SendMenuItems> menuItems = [
    SendMenuItems(text: "Photos & Videos", icons: Icons.image, color: Colors.amber),
    SendMenuItems(text: "Document", icons: Icons.insert_drive_file, color: Colors.blue),
    SendMenuItems(text: "Audio", icons: Icons.music_note, color: Colors.orange),
    SendMenuItems(text: "Location", icons: Icons.location_on, color: Colors.green),
    SendMenuItems(text: "Contact", icons: Icons.person, color: Colors.purple),
  ];

  void showModal(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            height: MediaQuery.of(context).size.height/2,
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16,),
                  Center(
                    child: Container(
                      height: 4,
                      width: 50,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListView.builder(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: menuItems[index].color.shade50,
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(menuItems[index].icons,size: 20,color: menuItems[index].color.shade400,),
                          ),
                          title: Text(menuItems[index].text),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    TextEditingController _message = TextEditingController();
    return Scaffold(
      appBar: AppBar(

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
          PopupMenuButton<int>(
              onSelected: (item) => onSelected(context,item),
              itemBuilder: (context)=> [
                PopupMenuItem(
                    value: 0,
                    child: Row(children: [
                      Icon(Icons.people,color: Colors.black,),
                      SizedBox(width: 5,),
                      Text("People")
                    ],) ),
                PopupMenuItem(
                    value: 1,
                    child:Row(children: [
                      Icon(Icons.favorite,color: Colors.black,),
                      SizedBox(width: 5,),
                      Text("Favorites"),
                    ],) ),
                PopupMenuItem(
                    value: 2,
                    child:Row(children: [
                      Icon(Icons.settings,color: Colors.black,),
                      SizedBox(width: 5,),
                      Text("Settings"),
                    ],) ),
                PopupMenuItem(
                    value: 3,
                    child:Row(children: [
                      Icon(Icons.arrow_forward,color: Colors.black,),
                      SizedBox(width: 5,),
                      Text("Sign out")
                    ],
                    ) )

              ]),

          IconButton(icon:Icon(Icons.notifications,color: Colors.black,) ,
              iconSize: 30,
              onPressed:() {}),
        ],

      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: chatMessage.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return ChatBubble(
                chatMessage: chatMessage[index],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 16,bottom: 10),
              height: 80,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      showModal();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add,color: Colors.white,size: 21,),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: TextFormField(
                      controller: _message,
                      onSaved: (val) {
                        message = val;
                      },
                      decoration: InputDecoration(
                        hintText: "Type Message",
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.only(right: 30,bottom: 50),
              child: FloatingActionButton(
                onPressed: (){
                  _message.clear();
                },
                child: Icon(Icons.send,color: Colors.white,),
                backgroundColor: Colors.lightBlue,
                elevation: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
void onSelected(BuildContext context , int item){
  switch(item){
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>st.SigninPage()),
      );
      break;
  }
}