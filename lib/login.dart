
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
//import 'package:icon_decoration/icon_decoration.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 200,),

                  RichText(
                      text: const TextSpan(
                          style:
                          TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold
                          ), //apply style to all
                          children: [
                            TextSpan(text: 'FACI', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                            TextSpan(text: ' O', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff28D8A1))),
                          ]
                      )
                  ),

                                        const SizedBox(height: 50),

                                        Padding(
                                          padding: const EdgeInsets.all(24.0),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 50 ,
                                                child: TextField(
                                                    controller: emailController,
                                                    decoration: const InputDecoration(
                                                      filled: true,
                                                      fillColor: Color(0xff424242),
                                                     // labelText: "Username",
                                                      prefixIcon: Icon(Icons.email_outlined,
                                                      color: Colors.white,), //icon at head of input
                                                    )
                                                ),
                                              ),
                                              const SizedBox(height: 30,),
                                              TextField(
                                                  controller: passwordController,
                                                  obscureText: true,
                                                  decoration: const InputDecoration(
                                                    filled: true,
                                                      fillColor: Color(0xff424242),
                                                      prefixIcon: Icon(Icons.lock_outline,
                                                      color: Colors.white,), //icon at head of input
                                                      //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                                                      //labelText: "Password",
                                                      //suffixIcon: Icon(Icons.remove_red_eye) //icon at tail of input
                                                  )
                                              ),
                                              const SizedBox(height: 30),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: const [
                                                  Material(
                                                    color: Colors.black,
                                                    shape: CircleBorder(
                                                        side: BorderSide(color: Color(0xff28D8A1))
                                                    ),
                                                  child: Icon(Icons.check,
                                                    color: Color(0xff28D8A1),),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text("Keep me logged in",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w100,
                                                      ),),
                                                  ),
                                                ],
                                              ),

                                              const SizedBox(height: 30,),

                                              Container(
                                                height: 50,
                                                width: 350,
                                                decoration: BoxDecoration(
                                                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context, MaterialPageRoute(builder: (_) => const MyApp()));
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: const Color(0xff28D8A1), // Background color
                                                  ),
                                                  child: const Text(
                                                    'LOGIN',
                                                    style: TextStyle(color: Colors.white, fontSize: 25),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: const <Widget>[
                                                  Expanded(
                                                    child:  Text('Forget password?',
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w100,
                                                      ),),
                                                  ),
                                                  Expanded(
                                                    child: TextButton(
                                                      onPressed: null,
                                                      child: Text('Recover here',
                                                        textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color(0xff28D8A1),
                                                      ),),
                                                    ),
                                                    ),
                                                ],
                                              ),
                                              const SizedBox(height: 100),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: const <Widget>[
                                                  Expanded(
                                                    child:  Text("Don't have an account?",
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w100,
                                                      ),),
                                                  ),
                                                  Expanded(
                                                    child: TextButton(
                                                      onPressed: null,
                                                      child: Text('Signup here',
                                                        textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: Color(0xff28D8A1),
                                                        ),),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}