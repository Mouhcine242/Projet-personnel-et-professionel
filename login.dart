import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet_ppp/Page1.dart';
import 'package:projet_ppp/signin.dart';
import 'package:provider/provider.dart';

import 'Authentification.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController ;

  TextEditingController _passwordController  ;

  final _formkey = GlobalKey<FormState>();


  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),


        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Login",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text("Login to your account",
                      style: TextStyle(
                          fontSize: 15,
                          color:Colors.grey[700]),)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _emailController,
                          validator: (val) => val.isNotEmpty ? null : "Please Enter an email adresse",
                          decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))), keyboardType: TextInputType.emailAddress,),
                        SizedBox(height: 20,),
                        TextFormField(
                          controller: _passwordController,
                          validator: (val) => val.length< 6 ? "Enter more than 6 character " : null,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))), obscureText: true,),
                        SizedBox(height: 20,),
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () async{
                            if(_formkey.currentState.validate()){
                              context.read<AuthenticationService>().signIn(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim(),
                              );
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> PageOne()));

                            }
                          },
                          color: Color(0xff0095FF),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(50),

                          ),
                          child: Text(
                            "Login", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,

                          ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SigninPage()));

                      },
                        child: Text(" Sign in", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,

                    )
                      ,)
                    )
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(top: 100),
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.png"),
                        fit: BoxFit.fitHeight
                    ),

                  ),
                )

              ],
            ))
          ],
        ),
      ),
    );
  }
}

