import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Leg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: CustomScrollView(
        slivers:<Widget> [
          SliverAppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
              opacity: 20,
            ),
            expandedHeight: 300,
            backgroundColor: Colors.grey[400],
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(child: Image.asset("assets/Leg-Muscles.jpg",fit: BoxFit.fill,),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Container(
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      elevation: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset("assets/quads.jpg",

                                  fit: BoxFit.cover,)),
                            fit: FlexFit.tight,),
                          SizedBox(width: 15,),
                          Flexible(child: Text("Quads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),fit: FlexFit.tight,)

                      ],),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      elevation: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset("assets/hamstrings.jpg",

                                  fit: BoxFit.cover,)),
                            fit: FlexFit.tight,),
                          SizedBox(width: 15,),
                          Flexible(child: Text("Hamstrings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),fit: FlexFit.tight,)

                        ],),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      elevation: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset("assets/glutes.jpg",

                                  fit: BoxFit.cover,)),
                            fit: FlexFit.tight,),
                          SizedBox(width: 15,),
                          Flexible(child: Text("Glutes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),fit: FlexFit.tight,)

                        ],),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      elevation: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                child: Image.asset("assets/calves.jpg",

                                  fit: BoxFit.cover,)),
                            fit: FlexFit.tight,),
                          SizedBox(width: 15,),
                          Flexible(child: Text("Calves",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),fit: FlexFit.tight,)

                        ],),

                    ),
                  ),
                  SizedBox(height: 10,)


              ],),
            )
          ]))
        ],
      ),
    );
  }

}