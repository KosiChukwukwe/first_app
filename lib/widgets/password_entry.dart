import 'package:flutter/material.dart';

class PasswordEntry extends StatefulWidget {
bool viewPassword = true;
  @override
  _PasswordEntryState createState() => _PasswordEntryState();

}

class _PasswordEntryState extends State<PasswordEntry> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children:[
        Container(
          padding: EdgeInsets.all(5.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),

          ),
          child: TextField(
          obscureText: widget.viewPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Password hrkko",
          ),
          keyboardType: TextInputType.number,
      ),
        ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: GestureDetector(
          child: widget.viewPassword
              ?
          Icon(Icons.remove_red_eye_outlined, size: 16.0, color: Colors.grey,)
              :
          Icon(Icons.remove_red_eye, size: 16.0, color: Colors.black,),
          onTap: (){
            setState(() {

              widget.viewPassword = widget.viewPassword ? false : true;
            });
          },
        ),
      ),
      ]
    );
  }
}
