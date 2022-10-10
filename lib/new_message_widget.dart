import 'package:flutter/material.dart';

class NewMessageWidget extends StatefulWidget {
  const NewMessageWidget({Key? key}) : super(key: key);

  @override
  State<NewMessageWidget> createState() => NewMessageWidgetState();
}

class NewMessageWidgetState extends State<NewMessageWidget> {
final _controller = TextEditingController();
String message= '';

// void sendMessage() async{
//   FocusScope.of(context).unfocus();
//   //await FirebaseApi.uploadMessage(widget.idUser, message);
// _controller.clear();
// }

  @override
  Widget build(BuildContext context) => Container(
    color: Colors.transparent,
    padding: EdgeInsets.all(8),
    child: Row(
      children: <Widget>[
        Expanded(
            child: TextField(
              controller: _controller,
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              enableSuggestions: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Type Your Message',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5),
                  gapPadding: 10,
                  borderRadius: BorderRadius.circular(25),
                )
              ),
              onChanged: (value)=> setState(() {
                message = value;
              }),
            ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: (){}, // message.trim().isEmpty? null: sendMessage,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple,
            ),
            child: Icon(Icons.send,
            color: Colors.white,),
          ),
        )
      ],
    ),
  );
}
