import 'package:flutter/material.dart';

class SecPage extends StatefulWidget {
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text("second page title"),
      // ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 86, 101, 113)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                "This is second Page",
                style: TextStyle(color: Color.fromARGB(255, 249, 205, 205), fontSize: 24, shadows: [
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 3.0,
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 94, 175, 255),
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "tap to route",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
