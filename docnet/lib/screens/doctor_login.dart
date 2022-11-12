import 'package:docnet/flutterfire%20backend/flutterfire.dart';
import 'package:docnet/screens/create_doctor.dart';
import 'package:docnet/screens/doctor_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:docnet/flutterfire backend/flutterfire.dart';

class DoctorLogin extends StatefulWidget {
  DoctorLogin({Key? key}) : super(key: key);

  @override
  State<DoctorLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
  final _doctorEmailcontroller = TextEditingController();
  final _doctorPasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _doctorEmailcontroller.dispose();
    _doctorPasswordController.dispose();
    super.dispose();
  }

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
              TextField(
                onChanged: (value) {
                  // print(value);
                  _doctorEmailcontroller.text = value;
                },

                textAlign: TextAlign.center,
                // cursorColor: Colors.white,
                controller: _doctorEmailcontroller,
                decoration: const InputDecoration(
                  hintText: "email ID",
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.lightBlueAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                cursorWidth: MediaQuery.of(context).size.width / 1.4,
                onChanged: (value) {
                  // print(value);
                  _doctorPasswordController.text = value;
                },
                obscureText: true,
                textAlign: TextAlign.center,
                controller: _doctorPasswordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Colors.lightBlueAccent), //<-- SEE HERE
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300, // <-- Your width
                height: 50, // <-- Your height
                child: ElevatedButton(
                  onPressed: () async {
                    print("button pressed");
                    try {
                      bool shouldNavigate = await signIn(
                          _doctorEmailcontroller.text,
                          _doctorPasswordController.text);
                      if (shouldNavigate) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctorDashboard(),
                          ),
                        );
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: const Text(
                    "Login",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
