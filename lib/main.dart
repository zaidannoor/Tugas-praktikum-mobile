import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1 Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/flutter-logo.png',
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                    SizedBox(height: 16.0),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
              )
            ],
          ),
          )
          
          
        ),
      ),
    );
  }
}
