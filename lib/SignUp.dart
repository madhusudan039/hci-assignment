import 'package:assignment_a2/homepage.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const SignUpPage(title: 'SignIn Page'),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key, required this.title});

  final String title;

  @override
  State<SignUpPage> createState() => _MySignUpPage();
}

class _MySignUpPage extends State<SignUpPage> {
  TextEditingController _unController = TextEditingController();
  TextEditingController _psController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
       return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: Image.asset("assets/flutter_logo.jpeg"),
            ),
            Padding(padding: EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 10,
            ),
            child: TextFormField(
              controller: _unController,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Name',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              // 
            ),
            ),

            Padding(padding: EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 10,
            ),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Email',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              // 
            ),
            ),

            Padding(padding: EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 10,
            ),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Input Username',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              // 
            ),
            ),
            Padding(padding: EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 10,
            ),
            child: TextFormField(
              controller: _psController,
              obscureText: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: 'Input Password',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              
            ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*.77,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.amber
              ),
              child: MaterialButton(
                onPressed: () {
                  print('Username: '+ _unController.text);
                  print('Password: '+ _psController.text);
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) =>  Homepage(data: _unController.text))
                    );
              },
              child: Text('Submit'),
              ),

            ),
     
          ],
        ),
      ),
    
    );
  }

  
  }
