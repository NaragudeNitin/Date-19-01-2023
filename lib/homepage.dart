import 'package:flutter/material.dart';

import 'second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 91, 103, 122),
      appBar: AppBar(title: const Text("Review")),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is first page of routing",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              shadows: [
                Shadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 3.0,
                )
              ]
            ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 94, 175, 255),),
                  ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecPage(),
                        )),
                    child: const Text("tap to route",
                    style: TextStyle(
                      color: Colors.white
                    ),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
