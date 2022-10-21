
import 'package:flutter/material.dart';

class MyOrderState extends StatefulWidget {
   const MyOrderState({Key?key}): super(key:key);

  @override
  State<MyOrderState> createState() => _MyOrderStateState();
}

class _MyOrderStateState extends State<MyOrderState> {
  get string => null;
  
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
     
        title: const Text("MY ORDER"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Text(
            "Enter the details of your laundry Orders and click to proceed",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider( color: Color.fromARGB(255, 255, 7, 7), 
          ),
          
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Clothe Type:",
                  hintText: "e.g T-Shirt"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Color:",
                  hintText: "e.g Red or Green"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Price:",
                  prefix:Text('₦')),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Quantity:",
                  hintText: "e.g 5"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Total Amount Paid:",
                  hintText: "e.g ₦5000"),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber),
              ),
              onPressed: () {},
              child: const Text("Procced"),
              ),
      
        ]
        ),
      ),
    );
  }
  }
