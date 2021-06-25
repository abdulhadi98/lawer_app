import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff1d3557), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);

class EditMyText extends StatelessWidget {
  final Function press;
  final bool visiable;
  final Icon myIcon;
  final String initial;

  const EditMyText(
      {@required this.press, this.visiable, this.myIcon, this.initial});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: initial,
        textDirection: TextDirection.ltr,
        
        minLines:
            6, // any number you need (It works as the rows for the textarea)
        keyboardType: TextInputType.multiline,
        maxLines: null,
        textAlign: TextAlign.center,
        onChanged: press,
        decoration: kTextFieldDecoration.copyWith(icon: myIcon));
  }
}
