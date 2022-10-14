
import 'package:flutter/material.dart';

class LaundryData extends StatefulWidget {
  const LaundryData({Key? key}) : super(key:key);
  

  @override
  State<LaundryData> createState() => _LaundryDataState();
}

class _LaundryDataState extends State<LaundryData> {
  int stock = 10;
  addStock(){
    setState(() {
      stock++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column( children:  [
           Text("numbers of lundry in stock $stock"),
          ElevatedButton(
            onPressed: () {
              addStock();
            }, 
            child: const Text("Number of laundry")
            )
          ],),
      ),
    );
  }
}
