import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projet_ppp/Page1.dart';
import 'package:projet_ppp/login.dart';
import 'package:provider/provider.dart';
import 'Authentification.dart';


String email ='';
String password ='';
String username ='';


class SigninPage extends StatefulWidget {



  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController _usernameController ;

  TextEditingController _emailController ;

  TextEditingController _passwordController  ;

  TextEditingController _repasswordController  ;

  final _formkey = GlobalKey<FormState>();



  @override
  void initState() {
    _usernameController= TextEditingController();
    _emailController= TextEditingController() ;
    _passwordController = TextEditingController();
    _repasswordController = TextEditingController();


    super.initState();
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _repasswordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),),
                  SizedBox(height: 20,),
                  Text("Create an account, It's free ",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)


                ],
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    TextFormField(controller: _usernameController,
                      decoration: InputDecoration(labelText: "UserName", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                    onSaved: (val){
                      username=val;
                    },),
                    SizedBox(height: 10,),
                    TextFormField(
                      onChanged: (val){
                        setState(() => email = val);

                      },
                      validator: (val) => val.isNotEmpty ? null : "Please Enter an email adresse",
                      controller: _emailController, decoration: InputDecoration(labelText: "Email", border:OutlineInputBorder(borderRadius: BorderRadius.circular(15))),keyboardType: TextInputType.emailAddress,),
                    SizedBox(height: 10,),

                    TextFormField(
                      onChanged: (val){
                        setState(() => password =val );

                      },
                      validator: (val) => val.length< 6 ? "Enter more than 6 character " : null,
                      controller: _passwordController, decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),obscureText: true,),
                    SizedBox(height: 10,),
                    TextFormField(controller: _repasswordController, decoration: InputDecoration(labelText: "Confirm The Password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),obscureText: true,),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () async {
                  if(_formkey.currentState.validate()){
                    _formkey.currentState.save();
                  context.read<AuthenticationService>().signUp(
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
                  "Sign up", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,

                ),
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                      child : Text("Already have an account?")),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));

                    } ,
                    child: Text(" Login", style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18)
                  ),
                  )
                ],
              )



            ],

          ),


        ),

      ),

    );
  }

}