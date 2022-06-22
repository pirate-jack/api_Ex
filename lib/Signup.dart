import 'package:flutter/material.dart';
import 'package:jobs/main.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController Password = new TextEditingController();
  TextEditingController CPassword = new TextEditingController();
  bool Pshow = true;
  bool CPshow = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: firstname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "First name",
                    labelText: " First name",
                    prefixIcon: Icon(Icons.person),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Last name",
                    labelText: " Last name",
                    prefixIcon: Icon(Icons.person),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Email",
                    labelText: " Email",
                    prefixIcon: Icon(Icons.mail_outline_outlined),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: Pshow,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your password",
                      labelText: "Enter your password",
                      prefixIcon: Icon(
                        Icons.lock,
                      ),

                      suffixIcon: IconButton(
                        icon: Icon(
                            Pshow ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            Pshow = !Pshow;
                          });
                        },
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "ConfPassword",
                      labelText: "ConfPassword",
                      prefixIcon: Icon(Icons.lock_outline),

                      suffixIcon: IconButton(
                        icon: Icon(
                            CPshow ? Icons.visibility_off : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            CPshow = !CPshow;
                          });
                        },
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));

                    },
                    child: Text("Signup")),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
