import 'package:flutter/material.dart';
import 'chat.dart';

class PopDialogueBox extends StatefulWidget {
  const PopDialogueBox({Key? key}) : super(key: key);

  @override
  State<PopDialogueBox> createState() => PopDialogueBoxState();
}

class PopDialogueBoxState extends State<PopDialogueBox> {
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      title: const Text(
        'Searching for user',
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircularProgressIndicator(
            color: Colors.purpleAccent,
          )

          // Text(
          //   "Click on start to begin chatting",
          //   style: TextStyle(
          //     color: Colors.deepPurple,
          //   ),
          // ),
        ],
      ),
      actions: <Widget>[
        new TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chat()),
            );
          },
          // textColor: Theme.of(context).primaryColor,
          child: const Text(
            'Start',
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
