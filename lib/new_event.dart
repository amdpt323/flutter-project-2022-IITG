import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build (BuildContext context){
    return Scaffold(
        backgroundColor: Color.fromRGBO(154,140,222,1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(75, 56, 187, 1),
        title: Text('New Event'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 100),
                  maximumSize: Size(280, 180),
                  backgroundColor: Color.fromRGBO(75, 56, 187, 1),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  foregroundColor: Colors.white,
                ),

                onPressed: (){},
                icon:Icon(Icons.calendar_month),
                label:TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Event',
                    border:InputBorder.none,

                  ),
                  controller: _textEditingController,
                )

            ),


            Builder(
                builder: (context) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(

                        style: ElevatedButton.styleFrom(

                          minimumSize: Size (280,50),
                          backgroundColor: Color.fromRGBO(187,178,234, 1),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),                    ),
                        onPressed: (){
                          String newEventText = _textEditingController.text;
                          Navigator.of(context).pop(newEventText);
                        },

                        child: Text('add'),
                    ),
                  );
                }
            ),
          ],
        ),
      )
    );
  }
}