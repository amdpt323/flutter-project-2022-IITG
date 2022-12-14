

import 'package:flutter/material.dart';
import 'package:flutter_course_2022/new_event.dart';

void main()=>runApp(MaterialApp(
  home:Home(),
));

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_HomeState();
}

class _HomeState extends State<Home>{
  final List<Widget> _list = [

  ];
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(154,140,222,1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(75, 56, 187, 1),
        title: Text('Event Scheduler'),
      ),
      body:ListView.builder(
        itemCount: _list.length,
          itemBuilder: ((context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),

              child: ListTile(


                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                selectedTileColor: Colors.white,
                selected: true,

                title:_list[index],
              ),
            );
          }),

      ),
      floatingActionButton: Builder(
        builder: (context){
          return FloatingActionButton(
            backgroundColor: Color.fromRGBO(75, 56, 187, 1),
            onPressed: ()async{
              String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(Text(newText));
              });

          },
          child: Icon(Icons.add),
          );
        }
      ),
    );
  }
}
