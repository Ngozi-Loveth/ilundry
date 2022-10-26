
import 'package:flutter/material.dart';
import 'package:ilundry/orderdetails.dart';



class MyOrderState extends StatefulWidget {
   const MyOrderState({Key?key}): super(key:key);

  @override
  State<MyOrderState> createState() => _MyOrderStateState();
}

class _MyOrderStateState extends State<MyOrderState> {


  final TextEditingController location = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController clothType = TextEditingController();
  final TextEditingController color = TextEditingController();
  final TextEditingController price = TextEditingController();
  final TextEditingController quantity = TextEditingController();
  final TextEditingController totalAmountPaid = TextEditingController();
  final GlobalKey <FormState>_formkey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
     
        title: const Text("MY ORDER"),
        centerTitle: true,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              validator: (value) {
                if(value == ""){
                  return  "enter valid location";
                } 
               
                return null;
               
  
            
              },
              
              controller: location,
              decoration: const InputDecoration(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.amberAccent,
                  border: OutlineInputBorder(),
                  labelText: "Location:",
                  hintText: "e.g No. 1 Aduvie Close"),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(validator: (value) {
                if(value == ""){
                  return  "enter valid Phone Number";
                }
                return null;
                
              
                
              
            
              },

              controller: phoneNumber,
              decoration: const InputDecoration(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.amberAccent,
                  border: OutlineInputBorder(),
                  labelText: "Phone Number:",
                  hintText: "e.g 07065018606"),
            ),
          ),
          
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField( validator: (value) {
                if(value == "Skirt"){
                  return  "enter valid ClothType";
                }
                return null;
               
               
              
            
              },
              controller: clothType,
              decoration: const InputDecoration(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.amberAccent,
                  border: OutlineInputBorder(),
                  labelText: "Clothe Type:",
                  hintText: "e.g T-Shirt"),
            ),
          ),
          
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              validator: (value) {
                if(value == ""){
                  return  "enter valid Color";
                }
                return null;
              
                
                
            
              },
              controller: color,
              decoration: const InputDecoration(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.amberAccent,
                  border: OutlineInputBorder(),
                  labelText: "Color:",
                  hintText: "e.g Red or Green"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(validator: (value) {
                if(value == ""){
                  return  "enter actual Price";
                }
                return null;
           
                
            
            
              },
              controller: price,
              decoration: const InputDecoration(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.amberAccent,
                  border: OutlineInputBorder(),
                  labelText: "Price:",
                  prefix:Text('₦')),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              validator: (value) {
                if(value == ""){
                  return  "enter valid Quantity";
                }
                return null;
                
                
                
            
              },
              controller: quantity,
              decoration: const InputDecoration(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.amberAccent,
                  border: OutlineInputBorder(),
                  labelText: "Quantity:",
                  hintText: "e.g 5"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextFormField(
              validator: (value) {
                if(value == ""){
                  return  "Enter Correct Total Amount Paid";
                }
                return null;
                
                
            
              },
              controller: totalAmountPaid,
              decoration: const InputDecoration(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.amberAccent,
                  border: OutlineInputBorder(),
                  labelText: "Total Amount Paid:",
                  hintText: "e.g ₦5000"),
            ),
          ),

          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              
              onPressed: () {
            if (_formkey.currentState!.validate()) {
                

                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return OrderDetails(location: location.text, phoneNumber: phoneNumber.text, clothType: clothType.text, 
                        color: color.text, price: price.text, quantity: quantity.text, totalAmountPaid: totalAmountPaid.text,);

              
                }),
                    );
}
                  },
          
              child: const Text("Proceed", style: TextStyle(fontWeight: FontWeight.bold),
               ),
               ),
            ],
          ),
        ),
      );
  }
}
