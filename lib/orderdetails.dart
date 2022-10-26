import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
   const OrderDetails({Key?key, required this.location, required this.phoneNumber, required this.clothType,
  required this.color, required this.price, required this.quantity, required this.totalAmountPaid });
final String location;
final String phoneNumber;
final String clothType;
final String color;
final String price;
final String quantity;
final String totalAmountPaid;

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ORDER DETAILS"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
        children:  [
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("location is ${widget.location}"),
            
          ),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: Text("Phone Number is ${widget.phoneNumber}"),
          ),
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("Cloth Type is ${widget.clothType}"),
          ),
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("Color is ${widget.color}"),
          ),
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("Price is ${widget.price}"),
          ),
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("location is ${widget.location}"),
          ),
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("Quantity is ${widget.quantity}"),
            
          ),
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("TotalAmountPaid is ${widget.totalAmountPaid}"),
            
        ), 
        ],
      )),
    );
  }
}