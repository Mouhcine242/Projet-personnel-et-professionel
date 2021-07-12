import 'package:flutter/material.dart';
import 'package:projet_ppp/Leg_Exercise.dart';


class Exercise2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Exercises"),
        elevation: 10,
        brightness: Brightness.light,
        backgroundColor: Colors.white70,
        shadowColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20,
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 10),
              child: IconButton(
                icon: Icon(Icons.account_circle_rounded),
                color: Colors.cyan[300],
                iconSize: 30,
                onPressed: () {},
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 0.2,
                          offset: Offset(0.3, 0.5),
                          spreadRadius: 0.5)
                    ]),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Leg()));
                  },

                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/legs.jpg',),

                    radius: 25,
                  ),
                  title: Text('Legs',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 0.2,
                          offset: Offset(0.3, 0.5),
                          spreadRadius: 0.5)
                    ]),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/chest.jpg'),
                    radius: 25,
                  ),
                  title: Text('Chest',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 0.2,
                          offset: Offset(0.3, 0.5),
                          spreadRadius: 0.5)
                    ]),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/back.jpg'),
                    radius: 25,
                  ),
                  title: Text('Back',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 0.2,
                          offset: Offset(0.3, 0.5),
                          spreadRadius: 0.5)
                    ]),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/shoulders.jpg'),
                    radius: 25,
                  ),
                  title: Text('Shoulders',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 0.2,
                          offset: Offset(0.3, 0.5),
                          spreadRadius: 0.5)
                    ]),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/arms.jpg'),
                    radius: 25,
                  ),
                  title: Text('Arms',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 0.2,
                          offset: Offset(0.3, 0.5),
                          spreadRadius: 0.5)
                    ]),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/abs.jpg'),
                    radius: 25,
                  ),
                  title: Text('Abs and Core',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                  trailing: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

