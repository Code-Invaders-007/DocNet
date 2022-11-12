import 'package:flutter/material.dart';

import 'doctor_login.dart';

class FrontPage extends StatefulWidget {
  FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300, // <-- Your width
              height: 50, // <-- Your height
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DoctorLogin()),
                  );
                },
                child: const Text(
                  "Login as Doctor",
                ),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // SizedBox(
            //   width: 300, // <-- Your width
            //   height: 50, // <-- Your height
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     child: const Text(
            //       "Login as Patient",
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // SizedBox(
            //   width: 300, // <-- Your width
            //   height: 50, // <-- Your height
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     child: const Text(
            //       "See Insurance Status",
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
