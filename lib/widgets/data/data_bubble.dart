// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DataBubble extends StatefulWidget {
  DataBubble(this.message, this.isMe);

  final String message;
  final bool isMe;

  @override
  _DataBubbleState createState() => _DataBubbleState();
}

class _DataBubbleState extends State<DataBubble> {
  // void _deleteMessage() async {
  //   final user = await FirebaseAuth.instance.currentUser();
  //   Firestore.instance.collection('chat').document().delete();
  // }

  @override
  Widget build(BuildContext context) {
    return widget.isMe
        ? Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.message,
                  style: TextStyle(
                      color: Theme.of(context).accentTextTheme.headline1.color,
                      fontSize: 20),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.update_rounded), onPressed: null),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: null,
                    ),
                  ],
                ),
              ],
            ),
          )
        : Container();
  }
}
