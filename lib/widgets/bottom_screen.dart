import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      // child:Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Center(
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),

      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),

            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              enabled: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add'),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
      ),
    );
    //     ),
    //   ),
    // ),
    //);
  }
}
