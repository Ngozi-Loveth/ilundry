import 'package:flutter/material.dart';

class PlaceOrderState extends StatefulWidget {
   const PlaceOrderState({Key?key}): super(key:key);

  @override
  State<PlaceOrderState> createState() => _PlaceOrderStateState();
}

class _PlaceOrderStateState extends State<PlaceOrderState> {
  get string => null;

  @override
  Widget build(BuildContext context) {
    String title;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          ElevatedButton(
        onPressed:(){
          Navigator.pop(context);
        },
        child: const Text("Go Back"),
        )
        ],
        ),
    
      ),
    );
  }
}