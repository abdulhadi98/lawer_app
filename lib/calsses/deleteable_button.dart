import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteableButton extends StatelessWidget {
  DeleteableButton({this.myColor, this.onPress, this.myText, this.contex,this.onDeletePress});

  final Color myColor;
  final Function onPress;
  final String myText;
  final String contex;
  final Function onDeletePress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 13),
      child: Material(
        elevation: 3.0,
        color: Color(0xff1d3557),
       borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
          onPressed: () {
            onPress();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.grey[400],
                ),
                onPressed: () {
                 onDeletePress();
                },
              ),
              Text(
                myText,
                style: TextStyle(
                    color: Color(0xffe1eaee),
                    fontSize: 17,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
