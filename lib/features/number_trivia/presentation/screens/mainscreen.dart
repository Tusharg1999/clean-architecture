import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _formkey = GlobalKey<FormState>();
  int _trivia;

   _submit(){
     print("hello");
    if(_formkey.currentState.validate()){
      _formkey.currentState.save();
      print(_trivia);
    }
   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Text",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.teal,
                                  width: 10,
                                  style: BorderStyle.solid)),
                          labelText: "Number Trivia",
                        ),
                        validator: (input) => input.trim().isEmpty
                            ? "Please enter Something"
                            : null,
                        onSaved: (input) => _trivia = int.parse(input),
                      ),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: _submit,
                      child: Container(
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.green,width: 5),
                          color: Colors.greenAccent
                              ),
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
