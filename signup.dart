import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup ({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('images/nebras logo.png',
              height: 250,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
             Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      obscureText: hide,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Password",
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            hide = !hide;
                          });
                        }, icon:hide? Icon(Icons.visibility_off): Icon(Icons.visibility),),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: () {} , child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.blue[900],
                            decoration: TextDecoration.underline,
                          ),


                        ))
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue[900]
                      ),
                      width: double.infinity,
                      child: RawMaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        onPressed: () {} ,
                        child: Text('Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height:15,
                    ),
                    Row(
                      children: [
                        Text(
                          "don't have an account?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                            SizedBox(
                              width: 15,
                            ),
                            TextButton(onPressed: () {} , child: Text(
                              'create now',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Colors.blue[900],
                                decoration: TextDecoration.underline,
                              ),


                            ),),



                      ],

                    ),




                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
