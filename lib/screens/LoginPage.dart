import 'package:first_app/widgets/password_entry.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
          title: Text("Baby Widgets"),

        leading: Icon(Icons.menu)
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal:30.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/baby_widget.png",
            width: 70,
            height: 70,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),

                ),
                child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email Address",
              ),
            ),
            ),

            PasswordEntry(),

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color> (Colors.purple)
              ),
              child: Text("Login"),
              onPressed: (){

              },
            ),
            Text("New User?  Sign Up!"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              child: Center(
                  child: Text(
                      "T",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                  ),
               ),
              decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple
                ),
            width:  20,
              height: 20,


            ),
            SizedBox(width: 20),
            Container(
              child: Center(
                  child: Text(
                      "F",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  ),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple
              ),
              width: 20,
              height: 20,


            ),
            SizedBox(width: 20),
            Container(
              child: Center(
                  child: Text(
                      "G",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                  ),
               ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple
              ),
              width:20,
              height: 20,


            )
          ]
        )

          ]
        )
      )
     );


  }
}