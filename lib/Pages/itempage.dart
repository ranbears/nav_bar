import 'package:flutter/material.dart';
import 'package:navbar/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    Key? key,
  }) : super(key: key);

  get Item => null;


  @override
  Widget build(BuildContext context) {
    final item itemArgs = ModalRoute.of(context)!.settings.arguments as item;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Item",
        style: TextStyle(fontSize: 20,
        color: Colors.black)),
         backgroundColor: Color(0xFFFEECE2),
        ),
        body: Container(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Center(child: Image.network(
              height: 300, 
              width: 200, 
              itemArgs.image
            ),),
            SizedBox(height: 10,), 
            Container(
              child: Text(
                'Description: ',
                style: TextStyle(fontSize:20,
                fontWeight: FontWeight.bold,
                color: Colors.black)
                ),
            ),
              SizedBox(height: 5,),
              Text(
                itemArgs.deskripsi,
                style: TextStyle(fontSize: 12 ,
                color: Colors.grey[600]
                ),
              ),
              SizedBox(height: 10,),
            Text
            (itemArgs.price.toString
            (),),
            SizedBox(height: 20),
                Center(
                 child: ElevatedButton(
                  onPressed: () {
                    },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 217, 142, 98), 
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), 
                      ),
                ),
                  child: Text(
                    'Check Out Produk',
                     style: TextStyle(color: Colors.white),
          ),),
      ), 
              ],
            ),
          ),
          
      
    );
  }
}
