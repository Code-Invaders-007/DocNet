import 'package:docnet/screens/create_doctor.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DoctorLogin extends StatefulWidget {
  DoctorLogin({Key? key}) : super(key: key);

  @override
  State<DoctorLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
  final _doctorUserIDcontroller = TextEditingController();
  final _doctorPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor Login"),
        // leading: TextButton(onPressed: Navigator.pop(context), child: const Icon(Icons.arrow_back_ios_new_rounded),),
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: // Note: Same code is applied for the TextFormField as well
                    TextField(
                  // controller: _doctorUserIDcontroller,
                  decoration: InputDecoration(
                    hintText: "User ID",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Colors.lightBlueAccent), //<-- SEE HERE
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: // Note: Same code is applied for the TextFormField as well
                    TextField(
                  // controller: _doctorPasswordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Colors.lightBlueAccent), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: SizedBox(
                  width: 300, // <-- Your width
                  height: 50, // <-- Your height
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Login ",
                    ),
                  ),
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => CreateDoctor(),
              //       ),
              //     );
              //   },
              //   child: const Text(
              //     "Create account",
              //     style: TextStyle(color: Colors.blue),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
