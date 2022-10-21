import 'package:flutter/material.dart';
import 'package:ilundry/myorder.dart';

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
        appBar: AppBar( title: const Text("PLACE ORDER"),
        centerTitle: true,
        ),
        body: Column(
          
          children: [
          const SizedBox(height: 20,),
          const Card(

            child: Center(
              child: Text("Enter Login Details", textAlign: TextAlign.center, style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500,
              ),),
            ),
          ),

         //text field 
          const SizedBox(height: 20,),
         const Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: TextField(
          decoration: InputDecoration(
          labelText: "Email" ,  
          hintText: 'Enter a search term',
          border:OutlineInputBorder(),
          
          ),
          ),
          ),
          
          const SizedBox(height: 30,),

          Padding(
          padding:const EdgeInsets.only(left: 30, right: 30),
          child: TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "password",

              prefixIcon: Icon(Icons.key),
              

              

          ),
          ),
          
          

        ),
      ElevatedButton(child:const Text("Login") , onPressed:(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyOrderState()));
    },)
          ]
        
        ),
    
      ),
    );
  }
}