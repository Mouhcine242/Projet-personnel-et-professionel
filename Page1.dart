import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_ppp/Chat1.dart';
import 'package:projet_ppp/Exercise1.dart';
import 'package:projet_ppp/Exercise2.dart';
import 'package:projet_ppp/MealScreen1.dart';
import 'package:projet_ppp/MealScreen2.dart';
import 'package:projet_ppp/signin.dart' as st;

class PageOne extends StatefulWidget{
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      resizeToAvoidBottomInset: false,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,width: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Text("Fitness Workout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,),),
            ],
          ),
          SizedBox(height: 20,),

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 15,),
                  Container(
                    height: 170,

                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Excercise()));
                      },

                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        elevation: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Flexible(
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                  child: Image.asset("assets/telechargement.jpg",

                                  fit: BoxFit.cover,)),
                              fit: FlexFit.tight,),
                            SizedBox(height: 20,),
                            Flexible(child: Text("Weight loss",style: TextStyle(fontWeight: FontWeight.w400),),fit: FlexFit.tight,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 170,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Exercise2()));
                      },
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        elevation: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Flexible(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                  child: Image.asset("assets/buildmass.jpg",

                                    fit: BoxFit.cover,)),
                              fit: FlexFit.tight,),
                            SizedBox(height: 20,),
                            Flexible(child: Text("Build muscle",style: TextStyle(fontWeight: FontWeight.w400),),fit: FlexFit.tight,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 170,

                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset("assets/balanceTrain.jpg",

                                  fit: BoxFit.cover,)),
                            fit: FlexFit.tight,),
                          SizedBox(height: 20,),
                          Flexible(child: Text("Balance training",style: TextStyle(fontWeight: FontWeight.w400),),fit: FlexFit.tight,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 170,

                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset("assets/enduranc.jpg",

                                  fit: BoxFit.cover,)),
                            fit: FlexFit.tight,),
                          SizedBox(height: 20,),
                          Flexible(child: Text("Endurance training",style: TextStyle(fontWeight: FontWeight.w400),),fit: FlexFit.tight,)
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded( child: Column(
            children: <Widget>[
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Nutrition",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  SizedBox(width: 15,),
                  Container(
                    height: 170,

                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MealScreen1()));
                      },
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        elevation: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Flexible(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                  child: Image.asset("assets/diet1.jpg",

                                    fit: BoxFit.cover,)),
                              fit: FlexFit.tight,),
                            SizedBox(height: 20,),
                            Flexible(child: Text("Weight loss",style: TextStyle(fontWeight: FontWeight.w400),),fit: FlexFit.tight,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 170,

                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MealScreen2()));
                      },
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        elevation: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Flexible(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                  child: Image.asset("assets/diet.jpg",

                                    fit: BoxFit.cover,)),
                              fit: FlexFit.tight,),
                            SizedBox(height: 20,),
                            Flexible(child: Text("Build muscle",style: TextStyle(fontWeight: FontWeight.w400),),fit: FlexFit.tight,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 170,

                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset("assets/diet2.jpg",

                                  fit: BoxFit.cover,)),
                            fit: FlexFit.tight,),
                          SizedBox(height: 20,),
                          Flexible(child: Text("Balance training",style: TextStyle(fontWeight: FontWeight.w400),),fit: FlexFit.tight,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 170,

                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset("assets/diet3.jpg",

                                  fit: BoxFit.cover,)),
                            fit: FlexFit.tight,),
                          SizedBox(height: 20,),
                          Flexible(child: Text("Endurance training",style: TextStyle(fontWeight: FontWeight.w400),),fit: FlexFit.tight,)
                        ],
                      ),
                    ),
                  ),

                ],),
              ))

            ],
          ),)

        ],
      )
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