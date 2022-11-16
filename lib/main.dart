import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(    =>  background
          //     image: AssetImage('assets/background.jpg'),
          //     fit: BoxFit.cover)),
          padding: EdgeInsets.only(left: 15, right: 15),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 60.0,
                  ),
                  Container(
                    child: Image(image: AssetImage('assets/logo.png')),
                    height: 220,
                    width: 220,
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  MaterialButton(
                      height: 50.0,
                      elevation: 5,
                      minWidth: 250,
                      onPressed: () {
                        // Navigator.push(context,
                        // MaterialPageRoute(

                        //   builder: (context)=>
                        //   const signin()
                        //   ),
                        //   );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: Colors.purple,
                      disabledColor:
                          Theme.of(context).primaryColor.withOpacity(0.50),
                      disabledElevation: 0,
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      thickness: 1.5,
                      color: Colors.grey,
                      indent: 15.0,
                      endIndent: 15.0,
                    )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                      thickness: 1.5,
                      color: Colors.grey,
                      indent: 15.0,
                      endIndent: 15.0,
                    )),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                      height: 50.0,
                      elevation: 5,
                      minWidth: 250,
                      onPressed: () {
                        // Navigator.push(context,
                        // MaterialPageRoute(

                        //   builder: (context)=>
                        //   const signup()
                        //   ),
                        //   );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      color: Colors.purple,
                      disabledColor:
                          Theme.of(context).primaryColor.withOpacity(0.50),
                      disabledElevation: 0,
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
