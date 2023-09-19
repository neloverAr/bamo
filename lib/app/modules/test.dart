import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(
            color: Color(0xFF45CAF4),
            child: Center(child: Text("Flutter",style: TextStyle(fontSize: 25),)
            ),
          )),
          Expanded(child: Container(
            color: Color(0xFF035095),
            child: const Center(child:Text("Inspector",style: TextStyle(fontSize: 25))
              ,),
          ))
        ],
      ),
    );
  }
}
