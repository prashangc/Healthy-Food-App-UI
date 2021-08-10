import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home.dart';

// import 'package:flutter/services.dart';
// import 'package:toggle_switch/toggle_switch.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.light.copyWith(
    //     systemNavigationBarIconBrightness: Brightness.dark,
    //     systemNavigationBarColor: Colors.black,
    //     statusBarIconBrightness: Brightness.dark,
    //     statusBarColor: Colors.yellow, // Note RED here
    //   ),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            toolbarHeight: 250,
            title: Center(
              child: Image(
                height: 200,
                // color: Colors.white,
                image: AssetImage(
                  'assets/images/logo.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            bottom: TabBar(
              // indicator: BoxDecoration(
              //   borderRadius: BorderRadius.circular(50),
              //   color: Colors.green,
              // ),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 5, color: Colors.red),
                insets: EdgeInsets.symmetric(horizontal: 30),
              ),
              tabs: [
                Tab(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  Positioned(
                    top: 50,
                    left: 55,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          width: 300,
                          height: 190,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.5,
                              )
                            ],
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 18, 18, 9),
                                child: TextField(
                                  cursorHeight: 2,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    border: OutlineInputBorder(),
                                    labelText: 'Username',
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 5, 18, 9),
                                child: TextField(
                                  obscureText: true,
                                  cursorHeight: 2,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 165,
                          left: 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[600],
                              padding: EdgeInsets.symmetric(
                                  horizontal: 45, vertical: 8),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 232,
                          left: 75,
                          child: Container(
                            width: 150,
                            height: 90,
                            // color: Colors.blue,
                            child: Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Forgot Password?',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => print('Tap Here onTap'),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          color: Colors.black,
                                          height: 20,
                                          thickness: 2,
                                          indent: 0,
                                          endIndent: 10,
                                        ),
                                      ),
                                      Text('OR'),
                                      Expanded(
                                        child: Divider(
                                          color: Colors.black,
                                          height: 1,
                                          thickness: 2,
                                          indent: 10,
                                          endIndent: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.facebook,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.mail,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  Positioned(
                    top: 30,
                    left: 55,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          width: 300,
                          height: 320,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.5,
                              )
                            ],
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 18, 18, 5),
                                child: TextField(
                                  cursorHeight: 2,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    border: OutlineInputBorder(),
                                    labelText: 'Username',
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 5, 18, 5),
                                child: TextField(
                                  cursorHeight: 2,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.mail),
                                    border: OutlineInputBorder(),
                                    labelText: 'Email Address',
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 5, 18, 5),
                                child: TextField(
                                  obscureText: true,
                                  cursorHeight: 2,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 5, 18, 9),
                                child: TextField(
                                  obscureText: true,
                                  cursorHeight: 2,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 325,
                    left: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[600],
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 8),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
