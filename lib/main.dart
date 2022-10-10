import 'package:flutter/material.dart';
import 'chat.dart';
// import 'new_message_widget.dart';
import 'pop_up_dialog_box.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY APP',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Chat App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/PNG.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 380.0,
                    width: 320.0,
                    color: Colors.transparent,
                    child: Container(
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: new Container(
                        padding: EdgeInsets.all(50),
                        child: new Text(
                          'Guidlines',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(60),
                    child: new Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                          ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                          ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'
                          ' ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                          'in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                      width: 500,
                      height: 350,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      color: Colors.transparent,
                      width: 100,
                      height: 40,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                            child: Text(
                                "I Agree",
                                style: TextStyle(fontSize: 16)
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(15)),
                                        side: BorderSide(color: Colors.black54)
                                    )
                                )
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => PopDialogueBox(),
                              );
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const Chat()),
                              // );
                            }
                        ),
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ],
    )
    );
  }
}
