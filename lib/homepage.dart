
import 'package:assignment_a2/main.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key, required this.data}): super(key: key);
  final String data;
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Welcome $data"),
          ),
          Container(
              width: MediaQuery.of(context).size.width*.77,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color.fromARGB(255, 135, 187, 133)
              ),
              child: MaterialButton(
                onPressed: () {
                  // print('Username: '+ _unController.text);
                  // print('Password: '+ _psController.text);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) =>  MyHomePage(title: 'Home Page'))
                    );
              },
              child: Text('Go Back to Home!'),
              ),

            ),
      ],
      )
    );
  }

}